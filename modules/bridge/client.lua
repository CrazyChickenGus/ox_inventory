function client.setPlayerData(key, value)
	PlayerData[key] = value
	OnPlayerData(key, value)
end

function client.hasGroup(group)
	if PlayerData.loaded then
		if type(group) == 'table' then
			for name, rank in pairs(group) do
				local groupRank = PlayerData.groups[name]
				if groupRank and groupRank >= (rank or 0) then
					return name, groupRank
				end
			end
		else
			local groupRank = PlayerData.groups[group]
			if groupRank then
				return group, groupRank
			end
		end
	end
end

local Utils = client.utils

local function onLogout()
	if PlayerData.loaded then
		if client.parachute then
			Utils.DeleteObject(client.parachute)
			client.parachute = false
		end

		TriggerEvent('ox_inventory:closeInventory')
		PlayerData.loaded = false
		ClearInterval(client.interval)
		ClearInterval(client.tick)
		currentWeapon = Utils.Disarm(currentWeapon)
		if shared.framework == 'qbcore' then
			TriggerServerEvent('ox:Server:OnPlayerUnload', PlayerPedId())
		end
	end
end

if shared.framework == 'ox' then
	RegisterNetEvent('ox:playerLogout', onLogout)

	RegisterNetEvent('ox:setGroup', function(name, grade)
		PlayerData.groups[name] = grade
		OnPlayerData('groups')
	end)

elseif shared.framework == 'esx' then
	local ESX = exports.es_extended:getSharedObject()

	ESX = {
		SetPlayerData = ESX.SetPlayerData,
		PlayerLoaded = ESX.PlayerLoaded
	}

	function client.setPlayerData(key, value)
		PlayerData[key] = value
		ESX.SetPlayerData(key, value)
	end

	RegisterNetEvent('esx:onPlayerLogout', onLogout)

	AddEventHandler('esx:setPlayerData', function(key, value)
		if PlayerData.loaded and GetInvokingResource() == 'es_extended' then
			if key == 'job' then
				key = 'groups'
				value = { [value.name] = value.grade }
			end

			PlayerData[key] = value
			OnPlayerData(key, value)
		end
	end)

	RegisterNetEvent('esx_policejob:handcuff', function()
		PlayerData.cuffed = not PlayerData.cuffed
		LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)
		if PlayerData.cuffed then
			currentWeapon = Utils.Disarm(currentWeapon)
		end
	end)

	RegisterNetEvent('esx_policejob:unrestrain', function()
		PlayerData.cuffed = false
		LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)
	end)

	if ESX.PlayerLoaded then
		TriggerServerEvent('ox_inventory:requestPlayerInventory')
	end
elseif shared.framework == 'qbcore' then
	local qbcore = exports['qb-core']:GetCoreObject()

	function client.setPlayerData(key, value)
		PlayerData[key] = value
		OnPlayerData(key, value)
		if(key == "inventory") then
			local newInv = {}
			for _, item in pairs(value) do
				local tempItem = {
					name = item.name,
					slot = item.slot,
					count = item.count,
					metadata = item.metadata or {}
				}
				if item.type == 'weapon' and item.info then
					tempItem['metadata'] = {
						serial = item.info.serie,
						durability = item.info.quality,
						components = item.info.attachments
					}
				end
				table.insert(newInv, tempItem)
			end
			
			local plyr = qbcore.Functions.GetPlayerData(false)
			plyr.items = newInv
			TriggerEvent('QBCore:Player:SetPlayerData', plyr)
		end
	end

	RegisterNetEvent('QBCore:Client:OnPlayerUnload', onLogout)
	
	RegisterNetEvent('QBCore:Client:OnJobUpdate', function(key, value)
		local oxKey = 'groups'
		local oxValue = { [value.name] = value.grade }
		PlayerData[oxKey] = oxValue
		OnPlayerData(oxKey, oxValue)
	end)

	RegisterNetEvent('police:client:GetCuffed', function(playerId, isSoftcuff)
		if exports["qb-policejob"]:IsHandcuffed() then
			PlayerData.cuffed = false
			LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)
		else
			PlayerData.cuffed = not PlayerData.cuffed
			LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)
			if PlayerData.cuffed then
				currentWeapon = Utils.Disarm(currentWeapon)
			end
		end
	end)

	RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
		TriggerServerEvent('ox_inventory:requestPlayerInventory')
	end)

end
