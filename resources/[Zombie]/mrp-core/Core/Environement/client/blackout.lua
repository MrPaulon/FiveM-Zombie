RegisterNetEvent('Blackout:On')
AddEventHandler('Blackout:On', function() 
    SetArtificialLightsState(true)
    SetArtificialLightsStateAffectsVehicles(false)
end)

RegisterNetEvent('Blackout:Off')
AddEventHandler('Blackout:Off', function() 
    SetArtificialLightsState(false)
    SetArtificialLightsStateAffectsVehicles(true)
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        TriggerEvent('Blackout:Off')
    end
end)