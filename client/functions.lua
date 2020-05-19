function scnotify(msg)
    SetTextComponent("STRING")
    AddTextComponent(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

function scspawncar(car)
    local auto = GetHashKey(car)
    
    RequestModel(car)
    while not HasModelLoaded(car) do 
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vozilo = CreateVehicle(car, x + 2, y + 2, z + 1, 0.0, true, false)
    SetEntityAsMissionEntity(vozilo, true, true)
end