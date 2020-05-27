local onlineIgraci = GetNumberOfPlayers()

Citizen.CreateThread(function()
    while true do
        local ime = GetPlayerPed(-1)
        local nalaziste = " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(ime))))
        local igracbrzina = math.floor((GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6)) .. " KM/h"
        Citizen.Wait(2*1000)

        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then 
            nalaziste = " is driving " .. igracbrzina
        if igracbrzina == "0 KM/h" then nalaziste = " is in a vehicle"
            end
        end

        SetDiscordAppId(672137884987293696)
        -- Sync je na IAP
        --SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))  | "Lokacija: " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(ime)))))
        SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. " | " .. GetPlayerName(PlayerId()) .. nalaziste .. " - " .. onlineIgraci .. "/32")

        SetDiscordRichPresenceAsset("photo-1539021929149-88832c42bc15")
        SetDiscordRichPresenceAssetText("hej")

        SetDiscordRichPresenceAssetSmall("photo-1539021929149-88832c42bc15")
        SetDiscordRichPresenceAssetSmallText("YOO")
    end
end)