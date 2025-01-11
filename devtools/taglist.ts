import species from "../datapack/data/cobblemon/species_feature_assignments/alpha.json" with {
    type: "json",
};

const encoder = new TextEncoder();
const predicate: {
    condition: string;
    terms: {
        condition: string;
        entity: string;
        predicate: { type: string; nbt: object };
    }[];
} = {
    "condition": "minecraft:any_of",
    "terms": [],
};

for (const pokemon of species.pokemon) {
    const json = {
        "condition": "minecraft:entity_properties",
        "entity": "this",
        "predicate": {
            "type": "cobblemon:pokemon",
            "nbt": { "Pokemon": { "Species": `cobblemon:${pokemon}` } },
        },
    };

    predicate.terms.push(json);
}

const data = encoder.encode(JSON.stringify(predicate));

await Deno.writeFile(
    `../datapack/data/alphas/predicate/fully_evolved.json`,
    data,
);
