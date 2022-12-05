local hasSpawned = false

Citizen.CreateThread(function() 
    Wait(1000)
    if not hasSpawned then
        hasSpawned = true
        TriggerEvent('Blackout:On')
    end
end)