ESX = nil
playerData = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	playerData = ESX.GetPlayerData()
end)

local PlayerGroup, ZombieGroup = "PLAYER", "ZOMBIE"
local Player = PlayerPedId()

DecorRegister("RegisterZombie", 2)
DecorRegister("ZombieLoot", 2)

local ZombieGrunt = {"zombie2", "zombie3", "zombie4", "zombie5", "zombie6", "zombie8", "zombie9", "zombie11", "zombie12", "zombie13",
	"zombie14", "zombie16", "zombie17", "zombie18", "zombie19", "zombie20"}
local ZombieGruntAlert = {"zombie1", "zombie7", "zombie10", "zombie15"}

local ZombieModel = { "a_m_m_farmer_01", "a_m_m_salton_04", "a_m_m_tramp_01", "a_m_o_soucent_02", "a_m_y_business_02", "a_f_m_fatcult_01", "a_f_y_yoga_01"}

AddRelationshipGroup(ZombieGroup)
SetRelationshipBetweenGroups(0, GetHashKey(ZombieGroup), GetHashKey(PlayerGroup))
SetRelationshipBetweenGroups(5, GetHashKey(PlayerGroup), GetHashKey(ZombieGroup))


Citizen.CreateThread(function() 
    while true do
        Wait(1000)
        local coords = GetEntityCoords(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        local model = ZombieModel[math.random(1, #ZombieModel)]
        local pedtypes = 1
        while not HasModelLoaded(GetHashKey(model)) do
            RequestModel(GetHashKey(model))
            Wait(100)
        end
        if math.random(0, 1) > 0 then
            if math.random(0, 1) > 0 then
                ped = CreatePed(pedtypes, GetHashKey(model), coords.x + math.random(40, 70), coords.y + math.random(40, 60), coords.z, heading, true, true)
            else
                ped = CreatePed(pedtypes, GetHashKey(model), coords.x + math.random(40, 70), coords.y - math.random(40, 70), coords.z, heading, true, true)
            end
        else
            if math.random(0, 1) > 0 then
                ped = CreatePed(pedtypes, GetHashKey(model), coords.x - math.random(40, 70), coords.y + math.random(40, 70), coords.z, heading, true, true)
            else
                ped = CreatePed(pedtypes, GetHashKey(model), coords.x - math.random(40, 70), coords.y - math.random(40, 70), coords.z, heading, true, true)
            end
        end
    end
end)

function ZombiePedAttributes(Ped)
    if not Config.ZombieCanRagdollByShots then SetPedRagdollBlockingFlags(Ped, 1) end
    SetPedCanRagdollFromPlayerImpact(Ped, false)
    SetPedSuffersCriticalHits(Ped, Config.ZombieInstantDeathByHeadshot)
    SetPedEnableWeaponBlocking(Ped, true)
    DisablePedPainAudio(Ped, true)
    StopPedSpeaking(Ped, true)
    SetPedDiesWhenInjured(Ped, false)
    StopPedRingtone(Ped)
    SetPedMute(Ped)
    SetPedIsDrunk(Ped, true)
    SetPedConfigFlag(Ped, 166, false)
    SetPedConfigFlag(Ped, 170, false)
    SetBlockingOfNonTemporaryEvents(Ped, true)
    SetPedCanEvasiveDive(Ped, false)
    RemoveAllPedWeapons(Ped, true)
end

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local PedHandler = -1
        local Success = false
        local Handler, PedHandler = FindFirstPed()

        repeat
            Wait(10)
                
            if IsPedHuman(PedHandler) and not IsPedAPlayer(PedHandler) and not IsPedDeadOrDying(PedHandler, true) then
                if not DecorExistOn(PedHandler, "RegisterZombie") then
                    ClearPedTasks(PedHandler)
                    ClearPedSecondaryTask(PedHandler)
                    ClearPedTasksImmediately(PedHandler)
                    TaskWanderStandard(PedHandler, 10.0, 10)
                    SetPedRelationshipGroupHash(PedHandler, ZombieGroup)
                    ApplyPedDamagePack(PedHandler, "BigHitByVehicle", 0.0, 1.0)
                    SetEntityHealth(PedHandler, Config.ZombieHealth)

                    RequestAnimSet("move_m@drunk@verydrunk")
                    while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
                        Wait(0)
                    end
                    SetPedMovementClipset(PedHandler, "move_m@drunk@verydrunk", 1.0)

                    SetPedConfigFlag(PedHandler, 100, false)
                    DecorSetBool(PedHandler, "RegisterZombie", true)
                end

                ZombiePedAttributes(PedHandler)

                local PlayerCoords = GetEntityCoords(PlayerPedId())
                local PedCoords = GetEntityCoords(PedHandler)
                local Distance = Vdist(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, PedCoords.x, PedCoords.y, PedCoords.z)
                local DistanceTarget

                if TriggerEvent('Player:IsShooting') then
                    DistanceTarget = Config.DistanceTarget + 100.0
                elseif TriggerEvent('Player:IsRunning') then
                    DistanceTarget = Config.DistanceTarget + 20.0
                elseif TriggerEvent('Player:IsDriving') then
                    local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    if GetVehicleClass(Vehicle) == 15 or GetVehicleClass(Vehicle) == 16 then
                        DistanceTarget = Config.DistanceTarget + 100.0
                    else
                        DistanceTarget = Config.DistanceTarget + 60.0
                    end
                else
                    DistanceTarget = Config.DistanceTarget
                end

                if Distance <= DistanceTarget then
                    if (Config.ZombieCanRun) then TaskGoStraightToCoord(PedHandler, PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 2.0, -1, 0.0, 0.0)
                    else TaskGoStraightToCoord(PedHandler, PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 1.0, -1, 0.0, 0.0) end
                end

                if Distance <= Config.DistanceTarget then
                    if not GetPedConfigFlag(PedHandler, 100, false) and GetEntityHealth(PlayerPedId()) ~= 0 then
                        local GruntAlert = ZombieGruntAlert[math.random(1, #ZombieGruntAlert)]
                        --TriggerEvent('Utils:SoundEntity', "Core", "Plague", GruntAlert, 0.8, PedHandler, false)
                        SetPedConfigFlag(PedHandler, 100, true)
                    end
                end

                if (Distance <= 1.3) then
                    if not IsPedRagdoll(PedHandler) and not IsPedGettingUp(PedHandler) then
                        if (GetEntityHealth(PlayerPedId()) == 0) then
                            ClearPedTasks(PedHandler)
                            TaskWanderStandard(PedHandler, 10.0, 10)
                        else
                            local GruntAlert = ZombieGruntAlert[math.random(1, #ZombieGruntAlert)]
                            RequestAnimSet("melee@unarmed@streamed_core_fps")
                            while not HasAnimSetLoaded("melee@unarmed@streamed_core_fps") do
                                Wait(10)
                            end

                            TaskPlayAnim(PedHandler, "melee@unarmed@streamed_core_fps", "ground_attack_0_psycho", 8.0, 1.0, -1, 48, 0.001, false, false, false)

                            ApplyDamageToPed(PlayerPedId(), Config.ZombieDamage, false)
                        end
                    end
                end
                
                if not NetworkGetEntityIsNetworked(PedHandler) then
                    DeleteEntity(PedHandler)
                end

                if (Config.Debug) then
                    DrawMarker(1, PedCoords.x, PedCoords.y, PedCoords.z + 1.0, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 255, 255, 255, false, true, 2, nil, nil, false)
                end
            end

            Success, PedHandler = FindNextPed(Handler)
        until not (Success)

        EndFindPed(Handler)
    end
end)


Citizen.CreateThread(function()
    while true do
        Wait(5)
        local PedHandler = -1
        local Success = false
        local Handler, PedHandler = FindFirstPed()

        repeat

            if IsPedHuman(PedHandler) and not IsPedAPlayer(PedHandler) and IsPedDeadOrDying(PedHandler, true) then
                local PlayerCoords = GetEntityCoords(PlayerPedId())
                local PedCoords = GetEntityCoords(PedHandler)
                local Distance = Vdist(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, PedCoords.x, PedCoords.y, PedCoords.z)

                if not DecorExistOn(PedHandler, "ZombieLoot") then
                    local ProbabilityLoot = 0
                    for i in pairs(Config.LootProbability) do
                        ProbabilityLoot = ProbabilityLoot + Config.LootProbability[i]
                    end
                    if math.random(1, 100) <= ProbabilityLoot then
                        DecorSetBool(PedHandler, "ZombieLoot", true)
                        TriggerServerEvent("Plague:LootCorpse", PedHandler, Config.Loot, ProbabilityLoot)
                    else
                        DecorSetBool(PedHandler, "ZombieLoot", false)
                    end
                end

                if Distance <= 1.2 and not IsPedInAnyVehicle(PlayerPedId(), true) and DecorGetBool(PedHandler, "ZombieLoot") then
                    local Ground, Zpos = GetGroundZFor_3dCoord_2(PedCoords.x, PedCoords.y, PedCoords.z, false)
                    local textCoords = vector3(PedCoords.x, PedCoords.y, Zpos + 0.2)
                    ESX.Game.Utils.DrawText3D(textCoords,"[E] Loot",0.4)
                    if (IsControlJustPressed(0, 51)) and GetEntityHealth(PlayerPedId()) > 0 then
                        ClearPedTasksImmediately(PlayerPedId())
                        RequestAnimDict("amb@medic@standing@kneel@base")
                        while not HasAnimDictLoaded("amb@medic@standing@kneel@base") do
                            Wait(0)
                        end
                        TaskPlayAnim(PlayerPedId(), "amb@medic@standing@kneel@base", "base", 5.0, 10.0, -1, 1, 0, false, false, false)

                        exports['nc-progressbar']:Progress({
                            name = "loot",
                            duration = 1000,
                            label = "Loot",
                            useWhileDead = false,
                            canCancel = false,
                            controlDisables = true,
                            animation = animation,
                            prop = nil,
                            propTwo = nil,
                        }, function(cancelled)
                            if not cancelled then
                                if onFinish then
                                    onFinish()
                                end
                            else
                                if onCancel then
                                    onCancel()
                                end
                            end
                        end)
                        Wait(1500)
                        
                        local random2 = math.random(1, #Config.Loot)

                        TriggerServerEvent('mrp-core:giveitem', Config.Loot[random2], 1)

                        ClearPedTasksImmediately(PlayerPedId())
                    end
                end
            end

            Success, PedHandler = FindNextPed(Handler)
        until not (Success)

        EndFindPed(Handler)
    end
end)