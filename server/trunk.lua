local trunkBusy = {}

RegisterServerEvent('qb-trunk:server:setTrunkBusy')
AddEventHandler('qb-trunk:server:setTrunkBusy', function(plate, busy)
    trunkBusy[plate] = busy
end)

ESX.RegisterServerCallback('qb-trunk:server:getTrunkBusy', function(source, cb, plate)
    if trunkBusy[plate] then
        cb(true)
    end
    cb(false)
end)

RegisterServerEvent('qb-trunk:server:KidnapTrunk')
AddEventHandler('qb-trunk:server:KidnapTrunk', function(targetId, closestVehicle)
    TriggerClientEvent('qb-trunk:client:KidnapGetIn', targetId, closestVehicle)
end)

--QBCore.Commands.Add("getintrunk", "Get In Trunk", {}, false, function(source, args)
RegisterCommand("getintrunk", function(source, args, rawCommand)    
    TriggerClientEvent('qb-trunk:client:GetIn', source)
end)

RegisterCommand("putintrunk", function(source, args, rawCommand) 
    TriggerClientEvent('qb-trunk:server:KidnapTrunk', source)
end)

