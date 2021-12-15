RegisterServerEvent('esx-radialmenu:server:RemoveBrancard')
AddEventHandler('esx-radialmenu:server:RemoveBrancard', function(PlayerPos, BrancardObject)
    TriggerClientEvent('esx-radialmenu:client:RemoveBrancardFromArea', -1, PlayerPos, BrancardObject)
end)

RegisterServerEvent('esx-radialmenu:Brancard:BusyCheck')
AddEventHandler('esx-radialmenu:Brancard:BusyCheck', function(id, type)
    local MyId = source
    TriggerClientEvent('esx-radialmenu:Brancard:client:BusyCheck', id, MyId, type)
end)

RegisterServerEvent('esx-radialmenu:server:BusyResult')
AddEventHandler('esx-radialmenu:server:BusyResult', function(IsBusy, OtherId, type)
    TriggerClientEvent('esx-radialmenu:client:Result', OtherId, IsBusy, type)
end)