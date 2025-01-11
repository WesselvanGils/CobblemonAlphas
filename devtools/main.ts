import species from "../datapack/data/cobblemon/species_feature_assignments/alpha.json" with {
    type: "json",
};

const encoder = new TextEncoder();

for (const pokemon of species.pokemon) {
    const json = {
        "target": `cobblemon:${pokemon}`,
        "features": ["alpha"],
        "forms": [
            {
                "name": "Alpha",
                "aspects": ["alpha"],
                "baseScale": 1.25,
            },
        ],
    };

    const data = encoder.encode(JSON.stringify(json));

    await Deno.writeFile(
        `../datapack/data/cobblemon/species_additions/${pokemon}.json`,
        data,
    );
}
