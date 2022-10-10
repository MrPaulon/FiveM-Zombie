
local Client = {
	PlayerData = {
		job = {
			name = 'unemployed',
			label = 'Unemployed',
			grade = 0,
			grade_label = '',
		},
	},
	premium = false
}

CreateThread(function()
	while true do
		Wait(0)
		if IsControlJustPressed(0, Config.OpenKey) then
			SendNUIMessage({
				action = 'show',
				data = {
					--battlepass = exports['battlepass']:getBattlepass(),
					--achievements = getAchievements(),
					hasPremium = Client.premium
				}
			})
			setFocus(true)
		end
	end
end)

function getAchievements()
	local achs = {}
	local newPromise = promise.new()
	ESX.TriggerServerCallback('achievements:getachievements', function(allachievements, myachievements)
		for name, achievement in pairs(allachievements) do
			if achs[achievement.category] == nil then
				achs[achievement.category] = {}
			end
			local tmp = {}
			tmp.label = achievement.ui.label
			tmp.description = achievement.ui.description
			tmp.fontawesome = achievement.ui.fontawesome
			tmp.reward = achievement.ui.reward
			if myachievements[name] then
				tmp.completed = true
			else
				tmp.completed = false
			end
			table.insert(achs[achievement.category], tmp)
		end
		newPromise:resolve()
	end)
	Citizen.Await(newPromise)
	return achs

end

function setFocus(action)
	if not IsNuiFocused() then
		SetNuiFocus(action, action)
	end
end

function closeMainMenu()
	if IsNuiFocused() then
		SetNuiFocus(false, false)
	end
end

RegisterNUICallback('execute', function(data, cb)
	local actionType, action in data
	closeMainMenu()
	if actionType == 'command' then
		ExecuteCommand(action)
	elseif actionType == 'client_event' then
		TriggerEvent(action)
	elseif actionType == 'notification' then
		ESX.ShowNotification(action)
	end
	cb('ok')
end)

RegisterNUICallback('closeNUI', function(_, cb)
	closeMainMenu()
	cb('ok')
end)

RegisterNUICallback('openvmenu', function(_, cb)
	TriggerEvent("togglevMenu",true)
end)

RegisterNUICallback('openBusinessMenu', function(_, cb)
	ExecuteCommand("society")
end)

RegisterNUICallback('opendonate', function(_, cb)
	TriggerEvent("esx_donate:open")
end)

RegisterNUICallback('buypremium', function(_, cb)
	TriggerEvent("esx_donate:buypremium")
end)

RegisterNUICallback('openInstructions', function(_, cb)
	exports.esx_instructions:openInstructions()
end)