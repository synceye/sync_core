MySQL.ready(function()
    print('[sync_core] [^2INFO^7] sync_core developed by sync is running with ^2mysql-async^7.')
    print('[sync_core] Version running: [^8v1.2^7]')
    if Config.enablecustomdata == true then
        MySQL.ready(function()
            print('[sync_core] [^2INFO^7] sync_core enabled custom data with ^2mysql-async^7.')
        end)
    else
    end
end)

AddEventHandler("playerConnecting", function(name, setCallback, deferrals)
    deferrals.defer()
    deferrals.update("[sync_core] Connecting...")
    deferrals.done()
end)