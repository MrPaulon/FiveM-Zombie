Config = {}

Config.Debug = false
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

Config.Blips = {
    craft = {
        vector3(398.1030, -1633.7710, 29.3818),
    }
}

Config.Loot = {
    "disc_ammo_smg"
}

Config.SafeZones = {
    {x = 399.3766, y = -1629.9512, z = 29.2918, radius = 80.0},
    {x = 197.7237, y = 2775.9678, z = 45.2805, radius = 80.0},
    {x = -452.8981, y = 6006.8638, z = 36.6476, radius = 60.0},
    {x = -410.2006, y = 1178.7404, z = 325.6281, radius = 130.0}
}

Config.SpawnLocations = {
    ['spawn1'] = {
      ['Coords'] = {
          ['X'] = 403.1115,
          ['Y'] = -1635.3485,
          ['Z'] = 29.3718,
          ['XR'] = -40.0,
          ['Z-Offset'] = 15,
          ['H'] = 179.23,
      },
    },
    ['spawn2'] = { -- -412.9643, 1169.2567, 325.8449, 345.0979
      ['Coords'] = {
          ['X'] = -412.9643,
          ['Y'] = 1169.2567,
          ['Z'] = 325.8449,
          ['XR'] = -40.0,
          ['Z-Offset'] = 10,
          ['H'] = 160.07,
      },
    },
    ['spawn3'] = {--- -469.0547, 6014.4761, 31.3405, 310.3309
      ['Coords'] = {
          ['X'] = -469.0547,
          ['Y'] = 6014.4761,
          ['Z'] = 31.5215,
          ['XR'] = -40.0,
          ['Z-Offset'] = 10,
          ['H'] = 340.17,
      },
    },
}