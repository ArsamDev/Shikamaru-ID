ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand("id", function (source, args, rawCommand)
    local id = source
    if source then
        TriggerClientEvent("s:showId", source, id)
    end
    
end)
