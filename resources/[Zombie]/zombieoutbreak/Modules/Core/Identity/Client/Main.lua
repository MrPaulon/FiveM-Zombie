LoadModuleTranslations("Data/Locales/".. GlobalConfig.Lang ..".lua")
local Config = LoadModuleConfig("Data/Config.lua")

local compteur = 0

--Register.Clothes("Nom de l'item", "Sexe", DrawableId, TextureId)

--DrawableId = {
--    Hat = 0,
--    Glasses = 1,
--    Earring = 2,
--    Watch = 3,
--    Bracelet = 4,
--    Mask = 5,
--    Accessory = 6,
--    T-Shirt = 7,
--    Gloves = 8,
--    Armor = 9,
--    Bag = 10,
--    Pants = 11,
--    Shoes = 12,
--    Top = 13,
--}

-- ###################################################################################
-- ################################ [ Male + Female] #################################
-- ###################################################################################

-- Mask
local maskAvailable = {
    4,14,15,16,28,29,30,35,36,37,38,46,50,51,52,53,54,55,56,57,58,89,90,101,104,106,107,111,113,114,115,116,117,118,119,122,126,128,129,130,132,166,169,175,185,186,187,188
}

compteur = 0

for k, v in pairs(maskAvailable) do
    compteur=compteur+1
    Register.Clothes("mask"..compteur, "Male", 5, v)
    --TriggerServerEvent('Identity:RegisterDBClothes', "mask"..compteur, "Masque", "No description.")
end

compteur = 0

for k, v in pairs(maskAvailable) do
    compteur=compteur+1
    Register.Clothes("mask"..compteur, "Female", 5, v)
end

-- Bags

local bagsAvailable = {
    1,2,3,4,5,6,7,8,9,20,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,51,52,53,54,55,56,57,58,59,60,61,62,63,66,68,69,81,82,83,84,85,86,87,88
}

compteur = 0

for k, v in pairs(bagsAvailable) do
    compteur=compteur+1
    Register.Clothes("bags"..compteur, "Male", 10, v)
    --TriggerServerEvent('Identity:RegisterDBClothes', "bags"..compteur, "Sac", "No description.")
end

compteur = 0

for k, v in pairs(bagsAvailable) do
    compteur=compteur+1
    Register.Clothes("bags"..compteur, "Female", 10, v)
end

-- ###################################################################################
-- #################################### [ Male ] #####################################
-- ###################################################################################

-- T-Shirt
Register.Clothes("unemployedtshirt", "Male", 7, 56)

-- Pants
Register.Clothes("unemployedpants", "Male", 11, 76)

-- Shoes
Register.Clothes("unemployedshoes", "Male", 12, 24)

-- Backpack
Register.Clothes("unemployedbackpack", "Male", 8, 0)


-- Torsos
local torsosMBlacklist = {
    97,98,164,165,166,167,168,169,196
}

compteur = 0

for i = 0 , 196 do
    local whitelist = true 
    for j in pairs(torsosMBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("torsosM"..compteur, "Male", 8, i)
    end
end

-- Legs
local legsMBlacklist = {
    56,77,85,95,106,108,109,112,113,114,115,119,127,136
}

compteur = 0

for i = 0 , 143 do
    local whitelist = true 
    for j in pairs(legsMBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("legsM"..compteur, "Male", 11, i)
    end
end


--Shoes
local shoesMBlacklist = {
    17,55,58,68,78,83,87,90,91,100
}

compteur = 0

for i = 0 , 101 do
    local whitelist = true 
    for j in pairs(shoesMBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("shoesM"..compteur, "Male", 12, i)
    end
end


--Accessories
for i = 0 , 105 do
    Register.Clothes("accessoriesM"..i, "Male", 6, i)
end


--Undershirts
local UndershirtsMBlacklist = {
    97,123,124,125,126,127,128,131,152,156,159,160,161,162,163,164,170,172
}

compteur = 0

for i = 0 , 188 do
    local whitelist = true 
    for j in pairs(UndershirtsMBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("undershirtsM"..compteur, "Male", 7, i)
    end
end


--Tops
local TopsMBlacklist = {
    178,201,274,277,278,285,286,287,291,310,372
}

compteur = 0

for i = 0 , 392 do
    local whitelist = true 
    for j in pairs(TopsMBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("topsM"..compteur, "Male", 13, i)
    end
end


--Hats
local HatsMBlacklist = {
    57,91,92,129,133,134
}

compteur = 0

for i = 0 , 163 do
    local whitelist = true 
    for j in pairs(HatsMBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("hatsM"..compteur, "Male", 0, i)
    end
end


--Glasses
local GlassesMBlacklist = {
    27
}

compteur = 0

for i = 0 , 39 do
    local whitelist = true 
    for j in pairs(GlassesMBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("glassesM"..compteur, "Male", 1, i)
    end
end


--Ears
for i = 0 , 40 do
    Register.Clothes("earsM"..i, "Male", 2, i)
end


--Watches
for i = 0 , 40 do
    Register.Clothes("watchesM"..i, "Male", 3, i)
end


--Bracelets
for i = 0 , 8 do
    Register.Clothes("braceletsM"..i, "Male", 4, i)
end

-- ###################################################################################
-- ################################## [ Female ] #####################################
-- ###################################################################################

-- T-Shirt
Register.Clothes("unemployedtshirt", "Female", 7, 49)

-- Pants
Register.Clothes("unemployedpants", "Female", 11, 1)

-- Shoes
Register.Clothes("unemployedshoes", "Female", 12, 3, 3)

-- Backpack
Register.Clothes("unemployedbackpack", "Female", 8, 0)


-- Torsos
local torsosFBlacklist = {
    112,113,205,206,207,208,209,210,241
}

compteur = 0

for i = 0 , 241 do
    local whitelist = true 
    for j in pairs(torsosFBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("torsosF"..compteur, "Female", 8, i)
    end
end


-- Legs
local legsFBlacklist = {
    20,22,79,88,98,113,115,116,119,120,121,122,132,143
}

compteur = 0

for i = 0 , 150 do
    local whitelist = true 
    for j in pairs(legsFBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("legsM"..compteur, "Female", 11, i)
    end
end


--Shoes
local shoesFBlacklist = {
    17,58,61,71,82,87,91,94,95,104
}

compteur = 0

for i = 0 , 105 do
    local whitelist = true 
    for j in pairs(shoesFBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("shoesF"..compteur, "Female", 12, i)
    end
end


--Accessories
for i = 0 , 120 do
    Register.Clothes("accessoriesF"..i, "Male", 6, i)
end


--Undershirts
local UndershirtsFBlacklist = {
    32,33,105,154,155,156,157,158,161,188,192,195,196,197,198,199,200,207,209    
}

compteur = 0

for i = 0 , 223 do
    local whitelist = true 
    for j in pairs(UndershirtsFBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("undershirtsF"..compteur, "Female", 7, i)
    end
end


--Tops
local TopsFBlacklist = {
    180,203,287,290,291,298,299,300,304,348,391
}

compteur = 0

for i = 0 , 414 do
    local whitelist = true 
    for j in pairs(TopsFBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("topsF"..compteur, "Female", 13, i)
    end
end


--Hats
local HatsFBlacklist = {
    90,91,128,132,133
}

compteur = 0

for i = 0 , 162 do
    local whitelist = true 
    for j in pairs(HatsFBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("hatsF"..compteur, "Female", 0, i)
    end
end


--Glasses
local GlassesFBlacklist = {
    29
}

compteur = 0

for i = 0 , 41 do
    local whitelist = true 
    for j in pairs(GlassesFBlacklist) do
        if i == j then 
            whitelist = false
            break
        end
    end
    if whitelist == true then
        compteur=compteur+1
        Register.Clothes("glassesF"..compteur, "Female", 1, i)
    end
end


--Ears
for i = 0 , 21 do
    Register.Clothes("earsF"..i, "Female", 2, i)
end


--Watches
for i = 0 , 29 do
    Register.Clothes("watchesF"..i, "Female", 3, i)
end


--Bracelets
for i = 0 , 15 do
    Register.Clothes("braceletsF"..i, "Female", 4, i)
end