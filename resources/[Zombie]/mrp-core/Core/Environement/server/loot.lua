ESX = nil
TriggerEvent(
	"esx:getSharedObject",
	function(obj)
		ESX = obj
	end
)

RegisterNetEvent('mrp-core:giveitem')
AddEventHandler('mrp-core:giveitem', function(item, quantity)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item, quantity)
end)