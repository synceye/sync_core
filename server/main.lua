-- IF SOMETHING DOESN'T WORK, CONTACT SYNC @ sync.eye#2817 --
-- IF SOMETHING DOESN'T WORK, CONTACT SYNC @ sync.eye#2817 --
-- IF SOMETHING DOESN'T WORK, CONTACT SYNC @ sync.eye#2817 --
--ESX = nil || WORK IN PROGRESS

Citizen.CreateThread(function()
	SetMapName('Zagreb')
    SetGameType('MediumRP')
end)

-- ˇˇ ESX THINGY, DON'T TOUCH IT! ˘˘ --
--TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) || WORK IN PROGRESS
-- ^^ ESX THINGY, DON'T TOUCH IT! ^^ --

RegisterCommand("spremi", function(source, args)
    local argString = table.concat(args, " ")

    MySQL.Async.fetchAll("INSERT INTO data (id, name, args) VALUES(@source, @name, @args)",
    {["@source"] = GetPlayerIdentifiers(source)[1], ["@name"] = GetPlayerName(source), ["@args"] = argString},
    function(result)
        TriggerClientEvent("uzmi", source, "^2"..argString.."^0")

    end)
end)

RegisterCommand("dobi", function(source, args)
    MySQL.Async.fetchAll("SELECT * FROM data ORDER BY id DESC LIMIT 1", {},
    function(result)
        local string = ("^3(" ..result[1].name ..") - ^8" .. result[1].id .. "^0 " .. result[1].args)
        TriggerClientEvent("uzmi", source, string)
    end)
end)

RegisterCommand("say", function(source, args, rawCommand)
    if source == 0 then
        if args[1] then
            local poruka = string.sub(rawCommand, 4)
            print("^1OBAVJESTENJE: "..poruka)
            TriggerEvent('chatMessage', -1,'^1OBAVJESTENJE:', poruka)
        else
            print("SC_ERROR: DOGODIO SE ERROR KOD KOMANDE say")
        end
    end
end, false)

RegisterNetEvent("nema-perms")
AddEventHandler("nema-perms", function()
    TriggerEvent("chatMessage", "[SC_ERROR]", {255,0,0}, "Nemate permisije da to ucinite!")
end)