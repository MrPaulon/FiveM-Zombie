for i, zone in ipairs(Config.SafeZones) do
    blip = AddBlipForRadius(zone.x, zone.y, zone.z, zone.radius)
	SetBlipHighDetail(blip, true)
    SetBlipColour(blip, 2)
    SetBlipAlpha(blip, 128)
end

for i, location in ipairs(Config.Blips.craft) do
    blip = AddBlipForCoord(location.x, location.y, location.z)
    SetBlipSprite(blip, 761)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.9)
    SetBlipColour(blip, 28)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Table de craft")
    EndTextCommandSetBlipName(blip)
end

Citizen.CreateThread(function() 
    while true do
        Wait(5)
        for i, zone in pairs(Config.SafeZones) do
            local PedHandler = -1
            local Success = false
            local Handler, PedHandler = FindFirstPed()
    
            repeat
                if IsPedHuman(PedHandler) and not IsPedAPlayer(PedHandler) and not IsPedDeadOrDying(PedHandler, true) then
                    local pedcoords = GetEntityCoords(PedHandler)
                    local distance = Vdist(zone.x, zone.y, zone.z, pedcoords.x, pedcoords.y, pedcoords.z)
    
                    if (distance <= zone.radius) then
                        DeleteEntity(PedHandler)
                    end
                end
    
                Success, PedHandler = FindNextPed(Handler)
            until not (Success)
    
            EndFindPed(Handler)
        end
    end
end)