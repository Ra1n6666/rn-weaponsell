local NPC = { x = 7.34, y = -1096.03, z = 29.8, rotation = 245.0, NetworkSync = true}
cooldowned = false

local blips = {
    {title="Weapon Seller", colour=8, id=567, x = NPC.x, y = NPC.y, z = NPC.z}
}
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

Citizen.CreateThread(function()
    modelHash = GetHashKey("ig_ballasog")
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    createNPC() 
end)

function createNPC()
    ped = CreatePed(0, modelHash , NPC.x,NPC.y,NPC.z - 1, NPC.rotation, NPC.NetworkSync)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "", 0, true)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3)
        local player = PlayerPedId()
        local pcoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(pcoords.x, pcoords.y, pcoords.z, NPC.x, NPC.y, NPC.z, false)
        if distance < 1 then
            DrawText3D(NPC.x, NPC.y, NPC.z,"[E] to sell the weapon you are holding.")
            if IsControlJustPressed(1, 38) then
                local pweapon = GetSelectedPedWeapon(player)
                -- print(pweapon)
                if pweapon == -1569615261 then
                    exports['mythic_notify']:SendAlert('error', 'You are not holding any weapon.', 3500, { ['background-color'] = '#ff0000', ['color'] = '#ffffff' })
                else
                    if not cooldowned then
                        if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_KNUCKLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SWITCHBLADE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SWITCHBLADE"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_KNIFE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_NIGHTSTICK") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_NIGHTSTICK"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_HAMMER") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_HAMMER"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_BAT") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_GOLFCLUB") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_GOLFCLUB"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_CROWBAR") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_CROWBAR"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_HATCHET") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_HATCHET"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_POOLCUE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_POOLCUE"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_WRENCH") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_WRENCH"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_FLASHLIGHT") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_BOTTLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_BOTTLE"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_DAGGER") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_DAGGER"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MACHETE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHETE"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_BATTLEAXE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_BATTLEAXE"))
                            TriggerServerEvent("rn-ac:banplayer", 5000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_PISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 20000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_PISTOL_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 30000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_COMBATPISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 25000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_VINTAGEPISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 60000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MACHINEPISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHINEPISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 60000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_APPISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 65000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_PISTOL50") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"))
                            TriggerServerEvent("rn-ac:banplayer", 10000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_REVOLVER") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_REVOLVER"))
                            TriggerServerEvent("rn-ac:banplayer", 15000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_REVOLVER_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_REVOLVER_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 35000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SNSPISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 45000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SNSPISTOL_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 80000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MARKSMANPISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANPISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 92500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_HEAVYPISTOL") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"))
                            TriggerServerEvent("rn-ac:banplayer", 82500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_DOUBLEACTION") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_DOUBLEACTION"))
                            TriggerServerEvent("rn-ac:banplayer", 75000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MICROSMG") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"))
                            TriggerServerEvent("rn-ac:banplayer", 80000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SMG") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"))
                            TriggerServerEvent("rn-ac:banplayer", 80000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SMG_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 87500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_ASSAULTSMG") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"))
                            TriggerServerEvent("rn-ac:banplayer", 80000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_COMBATPDW") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"))
                            TriggerServerEvent("rn-ac:banplayer", 80000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MINISMG") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"))
                            TriggerServerEvent("rn-ac:banplayer", 87500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MG") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MG"))
                            TriggerServerEvent("rn-ac:banplayer", 190000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_GUSENBERG") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"))
                            TriggerServerEvent("rn-ac:banplayer", 90000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_COMBATMG") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATMG"))
                            TriggerServerEvent("rn-ac:banplayer", 90000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_COMBATMG_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATMG_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 95000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) ==  GetHashKey("WEAPON_PUMPSHOTGUN") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"))
                            TriggerServerEvent("rn-ac:banplayer", 125000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SAWNOFFSHOTGUN") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SAWNOFFSHOTGUN"))
                            TriggerServerEvent("rn-ac:banplayer", 105000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 70000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_HEAVYSHOTGUN") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"))
                            TriggerServerEvent("rn-ac:banplayer", 150000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"))
                            TriggerServerEvent("rn-ac:banplayer", 1125000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_DBSHOTGUN") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_DBSHOTGUN"))
                            TriggerServerEvent("rn-ac:banplayer", 125000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MUSKET") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MUSKET"))
                            TriggerServerEvent("rn-ac:banplayer", 115000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("VWEAPON_ASSAULTRIFLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("VWEAPON_ASSAULTRIFLE"))
                            TriggerServerEvent("rn-ac:banplayer", 127500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 145000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_CARBINERIFLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"))
                            TriggerServerEvent("rn-ac:banplayer", 97500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 150000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_ADVANCEDRIFLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"))
                            TriggerServerEvent("rn-ac:banplayer", 162500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_COMPACTRIFLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMPACTRIFLE"))
                            TriggerServerEvent("rn-ac:banplayer", 162500)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SPECIALCARBINE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"))
                            TriggerServerEvent("rn-ac:banplayer", 150000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 375000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_BULLPUPRIFLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"))
                            TriggerServerEvent("rn-ac:banplayer", 425000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_SNIPERRIFLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"))
                            TriggerServerEvent("rn-ac:banplayer", 450000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_HEAVYSNIPER") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSNIPER"))
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_HEAVYSNIPER_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSNIPER_MK2"))
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MARKSMANRIFLE") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"))
                            TriggerServerEvent("rn-ac:banplayer", 600000)
                        elseif GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_MARKSMANRIFLE_MK2") then
                            exports['mythic_notify']:SendAlert('error', 'You have successfully sold your weapon.', 3500, { ['background-color'] = '#00aaff', ['color'] = '#ffffff' })
RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE_MK2"))
                            TriggerServerEvent("rn-ac:banplayer", 600000)
                        else
                            Failed()
                        end
                        cooldowned = true
                        Citizen.Wait(10000)
                        cooldowned = false
                    end
                end
            end
        end
    end
end)