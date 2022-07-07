ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
     TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
     Citizen.Wait(0)
    end
end)

RegisterNetEvent("s:showId", function (id)
    
    if Config.legacy == true then
        ESX.ShowNotification('~y~' .. tostring(id), "info", 3000)  
    else
        ShowNotification('~y~' .. tostring(id))
    end
    
end)




function ShowNotification(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, true)
end
