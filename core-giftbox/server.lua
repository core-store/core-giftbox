QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateUseableItem("gift_box", function(source, item)
    TriggerClientEvent("coregiftbox:client:openGiftbox", source, item.name)
end)



RegisterNetEvent('coregiftbox:server:gift1', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local amt1 = math.random(1, 3)
    if Player.Functions.RemoveItem('gift_box', 1) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['gift'], "remove")
        Player.Functions.AddItem("phone", 1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["phone"], "add")
        Player.Functions.AddItem("sandwich", amt1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["sandwich"], "add")
    end
    if math.random(1, 100) <= 5 then
        Player.Functions.AddItem("lockpick", 1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["lockpick"], "add")
    end
end)
