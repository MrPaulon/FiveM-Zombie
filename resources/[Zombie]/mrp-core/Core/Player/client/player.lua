RegisterNetEvent('Player:IsShooting')
AddEventHandler('Player:IsShooting', function()
    local PlayerShoot = false
    if IsPedShooting(PlayerPedId()) then
        PlayerShoot = true
    end
    
    return PlayerShoot
end)

RegisterNetEvent('Player:IsRunning')
AddEventHandler('Player:IsRunning', function() 
    local PlayerRun = false
    if IsPedSprinting(PlayerPedId()) or IsPedRunning(PlayerPedId()) then
        PlayerRun = true
    end

    return PlayerRun
end)

RegisterNetEvent('Player:IsDriving')
AddEventHandler('Player:IsDriving', function() 
    local PlayerDrive = false
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if GetEntitySpeed(Vehicle) > 0.0 then
            PlayerDrive = true
        end
    end

    return PlayerDrive
end)