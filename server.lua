local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('disi-emlaksc:server:getConfig', function(source, cb)
    cb(Config)
end)

QBCore.Functions.CreateCallback('disi-emlaksc:server:getLicense', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata["licences"]
    
    cb(licenseTable)
end)

RegisterNetEvent('disi-emlaksc:server:SellItems', function(itemName, itemAmount, itemPrice)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerData = Player.PlayerData 

    if PlayerData.job.name == "realestate" then 
        local totalPrice = tonumber(itemAmount) * itemPrice

        if Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
            Player.Functions.AddMoney('cash', totalPrice)
            TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', {value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice}), 'success')
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t('error.no_items'), 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "Emlakçı Değilsin Be Kardeşim Bi Sal.", 'error') 
    end
end)

QBCore.Functions.CreateCallback('disi-emlaksc:server:getInv', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local inventory = Player.PlayerData.items

    cb(inventory)
end)
