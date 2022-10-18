RegisterNetEvent("Utils:SoundEntity")
AddEventHandler("Utils:SoundEntity", function(Module, Resource, Name, Volume, Entity, Loop)
    local i = 0
    while SoundsEntity[i] ~= nil or SoundsCoords[i] ~= nil do i = i + 1 end
    local Coords = GetEntityCoords(Entity)
    SoundsEntity[i] = {Entity = Entity, Volume = Volume}
    SendNUIMessage({
        Type = "Sound",
        Index = i,
        Module = Module,
        Resource = Resource,
        File = Name,
        Volume = Volume,
        Coords = Coords,
        Loop = Loop
    })
end)