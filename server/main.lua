local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

ESX.RegisterUsableItem('rccar', function(source)
    TriggerClientEvent('rdrp_rccars:rcCar', source)
	
	local xPlayer = ESX.GetPlayerFromId(source)
	local car = xPlayer.getInventoryItem('rccar').count
				if car <= 1 then
				xPlayer.removeInventoryItem('rccar', 1)
			end
end)

RegisterServerEvent('rdrp_rccars:get')
AddEventHandler('rdrp_rccars:get', function()
	
	local xPlayer = ESX.GetPlayerFromId(source)
	local car = xPlayer.getInventoryItem('rccar').count
		if car <= 0 then
			xPlayer.addInventoryItem('rccar', 1)
		end
end)