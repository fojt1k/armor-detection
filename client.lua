local item = Config.item
local usedItem = false


exports(item, function(data, slot)
    exports.ox_inventory:useItem(data, function(data)
        if data then
            usedItem = true
        end
    end)
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if GetPedArmour(ped) > 0 and usedItem == false then
            TriggerServerEvent("Ban")
            SetPedArmour(ped, 0)
        end

        if GetPedArmour(ped) == 0 then
            usedItem = false
        end

        Wait(10000)
    end
end)
