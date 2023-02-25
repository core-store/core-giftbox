local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('coregiftbox:client:openGiftbox', function()
    local playerPed = PlayerPedId()
    QBCore.Functions.Progressbar('gift_box', 'Opening Gift Box', 5000, false, true,
        {
            -- Name | Label | Time | useWhileDead | canCancel
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
        animDict = 'amb@world_human_clipboard@male@idle_a',
        anim = 'idle_c',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        TriggerServerEvent('coregiftbox:server:gift1')
        ClearPedTasks(playerPed)
    end, function() -- Play When Cancel
        ClearPedTasks(playerPed)
    end)
end)
