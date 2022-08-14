ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("rn-ac:banplayer", function(length)
    local ply = ESX.GetPlayerFromId(source)
    if length <= 1000000 then
        ply.addMoney(length)
    else
        -- Ban player event.
    end
end)