ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("rn-weaponsell:givemoney", function(amount)
    local ply = ESX.GetPlayerFromId(source)
    ply.addMoney(amount)
end)