Citizen.CreateThread(function() 
    while true do
        Wait(1000)
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypeNow("FOGGY")
        SetWeatherTypeNowPersist("FOGGY")
        SetWeatherTypePersist("FOGGY")
    end
end)