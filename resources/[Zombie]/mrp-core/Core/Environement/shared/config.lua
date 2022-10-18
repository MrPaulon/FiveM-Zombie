Config = {}

Config.DistanceTarget = 20.0
Config.ZombieHealth = 300
Config.ZombieDamage = 10
Config.ZombieCanRagdollByShots = false
Config.ZombieInstantDeathByHeadshot = true
Config.ZombieCanRun = true
Config.ZombieSound = true -- if true, performance will suffer

Config.MaxItemsLoot = 3
Config.MaxItemCount = 2
Config.MaxWeaponAmmo = 30
Config.LootProbability = {
    Items = 15, -- 0%
    Clothes = 55, -- 15%
    Weapons = 15 -- 0%
    -- 85% No Loot
}
Config.Loot = {
    Items = {
        ""
    },
    Clothes = {
        "unemployedtshirt",
        "unemployedpants",
        "unemployedshoes",
        "unemployedbackpack"
    },
    Weapons = {
        "weapon_pistol",
        "weapon_bat",
        "weapon_hammer",
        "weapon_hatchet"
    }
}

Config.SafeZones = {
    {x = 399.3766, y = -1629.9512, z = 29.2918, radius = 80.0},
    {x = 197.7237, y = 2775.9678, z = 45.2805, radius = 80.0},
    {x = -452.8981, y = 6006.8638, z = 36.6476, radius = 60.0},
    {x = -410.2006, y = 1178.7404, z = 325.6281, radius = 130.0}
}

Config.Debug = false