local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('path_finder:getLocations', function(source, cb)
    MySQL.Async.fetchAll('SELECT * FROM path_finder_locations', {}, function(result)
        local locations = {}
        for i=1, #result, 1 do
            table.insert(locations, {
                name = result[i].name,
                coords = vector3(result[i].x, result[i].y, result[i].z)
            })
        end
        cb(locations)
    end)
end)