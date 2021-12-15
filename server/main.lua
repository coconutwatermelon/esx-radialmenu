RegisterServerEvent('json:dataStructure')
AddEventHandler('json:dataStructure', function(data)
    -- ??
end)

RegisterServerEvent('esx-radialmenu:trunk:server:Door')
AddEventHandler('esx-radialmenu:trunk:server:Door', function(open, plate, door)
    TriggerClientEvent('esx-radialmenu:trunk:client:Door', -1, plate, door, open)
end)