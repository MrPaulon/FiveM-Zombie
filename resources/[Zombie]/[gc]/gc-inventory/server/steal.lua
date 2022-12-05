ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ALERTAROBO')
AddEventHandler('ALERTAROBO', function(source)
TriggerClientEvent('dilza-notify:Alert', source, "Information", "Quelqu'un vient de vous voler", 5000, 'warning')	
end)


RegisterServerEvent('robo:jugador')
AddEventHandler('robo:jugador', function(targetid, playerheading, playerCoords,  playerlocation)
	_source = source



TriggerClientEvent('robo:getarrested', targetid, playerheading, playerCoords, playerlocation)
TriggerClientEvent('robo:doarrested', _source)


end)