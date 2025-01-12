interface BaseStats {
    hp: number;
    attack: number;
    defence: number;
    special_attack: number;
    special_defence: number;
    speed: number;
}

interface Behaviour {
    resting: {
        canSleep: boolean;
        willSleepOnBed: boolean;
        depth: string;
        light: string;
    };
}

interface DropEntry {
    item: string;
    quantityRange?: string;
    percentage?: number;
}

interface Drops {
    amount: number;
    entries: DropEntry[];
}

interface Evolution {
    id: string;
    variant: string;
    result: string;
    consumeHeldItem: boolean;
    learnableMoves: string[];
    requirements: string[];
    requiredContext: string;
}

interface EvYield {
    hp: number;
    attack: number;
    defence: number;
    special_attack: number;
    special_defence: number;
    speed: number;
}

interface Form {
    name: string;
    primaryType: string;
    abilities: string[];
    baseStats: BaseStats;
    catchRate: number;
    maleRatio: number;
    baseExperienceYield: number;
    baseFriendship: number;
    evYield: EvYield;
    experienceGroup: string;
    eggCycles: number;
    eggGroups: string[];
    moves: string[];
    labels: string[];
    aspects: string[];
    height: number;
    weight: number;
    evolutions: Evolution[];
    cannotDynamax: boolean;
    battleOnly: boolean;
    pokedex: string[];
    drops: Drops;
}

interface Hitbox {
    width: number;
    height: number;
    fixed: boolean;
}

interface EvYield {
    hp: number;
    attack: number;
    defence: number;
    special_attack: number;
    special_defence: number;
    speed: number;
}

export interface Pokemon {
    implemented: boolean;
    name: string;
    nationalPokedexNumber: number;
    primaryType: string;
    abilities: string[];
    baseStats: BaseStats;
    behaviour: Behaviour;
    catchRate: number;
    maleRatio: number;
    shoulderMountable: boolean;
    forms: Form[];
    features: string[];
    baseExperienceYield: number;
    experienceGroup: string;
    eggCycles: number;
    eggGroups: string[];
    drops: Drops;
    moves: string[];
    labels: string[];
    pokedex: string[];
    evolutions: Evolution[];
    baseScale: number;
    hitbox: Hitbox;
    baseFriendship: number;
    evYield: EvYield;
    height: number;
    weight: number;
    aspects: string[];
    cannotDynamax: boolean;
}
