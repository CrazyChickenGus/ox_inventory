local Query = {
	SELECT_STASH = 'SELECT data FROM ox_inventory WHERE owner = ? AND name = ?',
	UPDATE_STASH = 'INSERT INTO ox_inventory (owner, name, data) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE data = VALUES(data)',
	SELECT_GLOVEBOX = 'SELECT plate, glovebox FROM `{vehicle_table}` WHERE `{vehicle_column}` = ?',
	SELECT_TRUNK = 'SELECT plate, trunk FROM `{vehicle_table}` WHERE `{vehicle_column}` = ?',
	SELECT_PLAYER = 'SELECT inventory FROM `{user_table}` WHERE `{user_column}` = ?',
	UPDATE_TRUNK = 'UPDATE `{vehicle_table}` SET trunk = ? WHERE `{vehicle_column}` = ?',
	UPDATE_GLOVEBOX = 'UPDATE `{vehicle_table}` SET glovebox = ? WHERE `{vehicle_column}` = ?',
	UPDATE_PLAYER = 'UPDATE `{user_table}` SET inventory = ? WHERE `{user_column}` = ?',
}

do
	local playerTable, playerColumn, vehicleTable, vehicleColumn, trunkTable, gloveboxTable

	-- if shared.framework == 'qbcore' then
	-- 	Query = {
	-- 		SELECT_STASH = 'SELECT data FROM ox_inventory WHERE owner = ? AND name = ?',
	-- 		UPDATE_STASH = 'INSERT INTO ox_inventory (owner, name, data) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE data = VALUES(data)',
	-- 		SELECT_TRUNK = 'SELECT plate, items from `{trunk_table}` WHERE plate = ?',
	-- 		SELECT_GLOVEBOX = 'SELECT plate, items from `{glovebox_table}` WHERE plate = ?',
	-- 		SELECT_PLAYER = 'SELECT inventory from `{user_column}` WHERE citizenid = ?',
	-- 		UPDATE_TRUNK = 'UPDATE `{trunk_table}` SET items = ? WHERE plate = ?',
	-- 		UPDATE_GLOVEBOX = 'UPDATE `{glovebox_table}` SET items = ? WHERE plate = ?',
	-- 		UPDATE_PLAYER = 'UPDATE `{user_column}` SET inventory = ? WHERE citizenid = ?'
	-- 	}
	-- else
	-- 	Query = {
	-- 		SELECT_STASH = 'SELECT data FROM ox_inventory WHERE owner = ? AND name = ?',
	-- 		UPDATE_STASH = 'INSERT INTO ox_inventory (owner, name, data) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE data = VALUES(data)',
	-- 		SELECT_GLOVEBOX = 'SELECT plate, glovebox FROM `{vehicle_table}` WHERE `{vehicle_column}` = ?',
	-- 		SELECT_TRUNK = 'SELECT plate, trunk FROM `{vehicle_table}` WHERE `{vehicle_column}` = ?',
	-- 		SELECT_PLAYER = 'SELECT inventory FROM `{user_table}` WHERE `{user_column}` = ?',
	-- 		UPDATE_TRUNK = 'UPDATE `{vehicle_table}` SET trunk = ? WHERE `{vehicle_column}` = ?',
	-- 		UPDATE_GLOVEBOX = 'UPDATE `{vehicle_table}` SET glovebox = ? WHERE `{vehicle_column}` = ?',
	-- 		UPDATE_PLAYER = 'UPDATE `{user_table}` SET inventory = ? WHERE `{user_column}` = ?',
	-- 	}
	-- end

	

	if shared.framework == 'ox' then
		playerTable = 'characters'
		playerColumn = 'charid'
		vehicleTable = 'vehicles'
		vehicleColumn = 'id'
	elseif shared.framework == 'esx' then
		playerTable = 'users'
		playerColumn = 'identifier'
		vehicleTable = 'owned_vehicles'
		vehicleColumn = 'plate'
	elseif shared.framework == 'qbcore' then
		playerTable = 'players'
		playerColumn = 'citizenid'
		vehicleColumn = 'plate'
		trunkTable = 'trunkitems'
		gloveboxTable = 'gloveboxitems'
	end

	if shared.framework == 'qbcore' then	
		for k, v in pairs(Query) do
			print(k)
			if(string.find(k, "_TRUNK")) then
				vehicleTable = 'trunkitems'
			elseif (string.find(k, "_GLOVEBOX")) then
				vehicleTable = 'gloveboxitems'
			end
			Query[k] = v:gsub('{user_table}', playerTable):gsub('{user_column}', playerColumn):gsub('{vehicle_table}', vehicleTable):gsub('{vehicle_column}', vehicleColumn)
			--Query[k] = v:gsub('{user_table}', playerTable):gsub('{user_column}', playerColumn):gsub('{trunk_table}', trunkTable):gsub('{glovebox_table}', gloveboxTable):gsub('{vehicle_column}', vehicleColumn)
		end
	else
		for k, v in pairs(Query) do
			Query[k] = v:gsub('{user_column}', playerColumn):gsub('{vehicle_column}', vehicleColumn)
		end
	end
end

db = {}

function db.loadPlayer(identifier)
	local inventory = MySQL.prepare.await(Query.SELECT_PLAYER, { identifier })
	local decodedInventory = json.decode(inventory)

	local newInv = {}
	for _, item in pairs(decodedInventory) do
		local tempItem = {
			name = item.name,
			slot = item.slot,
			count = item.count
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
	return decodedInventory
end

function db.savePlayer(owner, inventory)
	return MySQL.prepare(Query.UPDATE_PLAYER, { inventory, owner })
end

function db.saveStash(owner, dbId, inventory)
	return MySQL.prepare(Query.UPDATE_STASH, { owner or '', dbId, inventory })
end

function db.loadStash(owner, name)
	return MySQL.prepare.await(Query.SELECT_STASH, { owner or '', name })
end

function db.saveGlovebox(id, inventory)
	return MySQL.prepare(Query.UPDATE_GLOVEBOX, { inventory, id })
end

function db.loadGlovebox(id)
	return MySQL.prepare.await(Query.SELECT_GLOVEBOX, { id })
end

function db.saveTrunk(id, inventory)
	return MySQL.prepare(Query.UPDATE_TRUNK, { inventory, id })
end

function db.loadTrunk(id)
	return MySQL.prepare.await(Query.SELECT_TRUNK, { id })
end

function db.saveInventories(trunks, gloveboxes, stashes)
	if #trunks > 0 then
		MySQL.prepare(Query.UPDATE_TRUNK, trunks)
	end

	if #gloveboxes > 0 then
		MySQL.prepare(Query.UPDATE_GLOVEBOX, gloveboxes)
	end

	if #stashes > 0 then
		MySQL.prepare(Query.UPDATE_STASH, stashes)
	end
end

function db.selectLicense(name, owner)
	return MySQL.scalar.await('SELECT 1 FROM user_licenses WHERE type = ? AND owner = ?', { name, owner })
end
