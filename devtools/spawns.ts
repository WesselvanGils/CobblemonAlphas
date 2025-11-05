import { basename, join, resolve } from "@std/path";

import species from "../datapack/data/cobblemon/species_feature_assignments/alpha.json" with {
    type: "json",
};
const spawnData = await importJSONFilesToMap(
    "./assets/spawn_files",
);

const encoder = new TextEncoder();

const speciesSet = new Set(species.pokemon);

for (const [key, value] of spawnData.entries()) {
    if (!speciesSet.has(key.slice(5, -5))) continue;

    let parsedValue = value as any;

    parsedValue.spawns = parsedValue.spawns.map((old: any) => ({
        ...old,
        id: `alpha-${old.id}`,
        pokemon: `${old.pokemon} alpha`,
        weight: old.weight / 3,
    }));

    const data = encoder.encode(JSON.stringify(parsedValue));

    await Deno.writeFile(
        `../datapack/data/cobblemon/spawn_pool_world/${key}`,
        data,
    );
}

async function importJSONFilesToMap(
    folderPath: string,
): Promise<Map<string, unknown>> {
    const result = new Map<string, unknown>();

    async function traverseDirectory(dir: string) {
        for await (const entry of Deno.readDir(dir)) {
            const entryPath = join(dir, entry.name);
            if (entry.isDirectory) {
                await traverseDirectory(entryPath);
            } else if (entry.isFile && entry.name.endsWith(".json")) {
                const jsonContent = await Deno.readTextFile(entryPath);
                try {
                    const data = JSON.parse(jsonContent);
                    // Use the file name (without the path) as the key
                    const fileName = basename(entry.name);
                    result.set(fileName, data);
                } catch (err) {
                    console.error(
                        `Failed to parse JSON file: ${entryPath}`,
                        err,
                    );
                }
            }
        }
    }

    const absoluteFolderPath = resolve(folderPath);
    await traverseDirectory(absoluteFolderPath);

    return result;
}
