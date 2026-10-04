local ESX = nil
local isMenuOpen = false
local selectedLocation = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    RegisterNUICallback('closeMenu', function(data, cb)
        SetNuiFocus(false, false)
        isMenuOpen = false
        cb('ok')
    end)

    RegisterNUICallback('selectLocation', function(data, cb)
        selectedLocation = data.location
        SetNuiFocus(false, false)
        isMenuOpen = false
        cb('ok')
    end)

    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(0, 38) and not isMenuOpen then
            ESX.TriggerServerCallback('path_finder:getLocations', function(locations)
                SendNUIMessage({
                    type = 'openMenu',
                    locations = locations
                })
                SetNuiFocus(true, true)
                isMenuOpen = true
            end)
        end

        if selectedLocation ~= nil then
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            local targetCoords = selectedLocation.coords

            if #(playerCoords - targetCoords) > 5.0 then
                TaskGoStraightToCoord(playerPed, targetCoords.x, targetCoords.y, targetCoords.z, 1.0, -1, targetCoords.z, 0.0)
            else
                SetEntityCoords(playerPed, targetCoords.x, targetCoords.y, targetCoords.z)
                selectedLocation = nil
            end
        end
    end
end)