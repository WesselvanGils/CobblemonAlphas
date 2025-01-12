import {
    basename,
    join,
    resolve,
} from "https://deno.land/std@0.224.0/path/mod.ts";

import species from "../datapack/data/cobblemon/species_feature_assignments/alpha.json" with {
    type: "json",
};
import { Pokemon } from "./pokemon.ts";

const pokemonData = await importJSONFilesToMap<Pokemon>(
    "./assets/data",
);

const encoder = new TextEncoder();

for (const pokemon of species.pokemon) {
    const pokeData = pokemonData.get(`${pokemon}.json`);
    if (pokeData === undefined) continue;

    let size = pokeData.baseScale ?? 1;
    size *= 1.25;

    const json = {
        "target": `cobblemon:${pokemon}`,
        "features": ["alpha"],
        "forms": [
            {
                "name": "Alpha",
                "aspects": ["alpha"],
                "baseScale": size,
            },
        ],
    };

    const data = encoder.encode(JSON.stringify(json));

    await Deno.writeFile(
        `../datapack/data/cobblemon/species_additions/${pokemon}.json`,
        data,
    );
}

async function importJSONFilesToMap<T = unknown>(
    folderPath: string,
): Promise<Map<string, T>> {
    const result = new Map<string, T>();

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
