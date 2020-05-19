RegisterNetEvent("nema-perms")
AddEventHandler("nema-perms", function()
    TriggerEvent("chatMessage", "[SC_ERROR]", {255,0,0}, "Nemate permisije da to ucinite!")
end)

RegisterNetEvent("uzmi")
AddEventHandler("uzmi", function(args)
    TriggerEvent("chatMessage", "[STAVLJENO]", {0,255,0}, "Dodano " .. args .. " u databazu") 
end)

RegisterCommand("identifier", function(source, user)
    MySql.Async.fetchAll("SELECT * FROM data ORDER BY id DESC LIMIT 1", {},
    function(igrac)
        local tekst = ("^3(" ..igrac[1].name ..") - ^8" .. igrac[1].id)
        scnotify("uzmi", source, tekst)
    end)
end)