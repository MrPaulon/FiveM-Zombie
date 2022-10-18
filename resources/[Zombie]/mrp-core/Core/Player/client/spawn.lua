local hasSpawned = false

AddEventHandler('playerSpawned', function() 
    if not hasSpawned then
        hasSpawned = true
        TriggerEvent('Blackout:On')
        print('okok')
        TriggerEvent('hh-spawn:client:choose:spawn')
    end
end)

exports.spawnmanager:spawnPlayer(1, function(spawn)
    TriggerEvent('chat:addMessage', { args = { 'You have spawned! Congrats!' } })
    TriggerEvent('Blackout:On')
    print('okok')
    TriggerEvent('hh-spawn:client:choose:spawn')
end)

Citizen.CreateThread(function() 
    Wait(1000)
    if not hasSpawned then
        hasSpawned = true
        TriggerEvent('Blackout:On')
    end
end)