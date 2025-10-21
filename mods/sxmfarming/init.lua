--
-- sxm Farming, SereXmotsatt
--

sxmfarming = {}
sxmfarming.water = 'default:water_source'
sxmfarming.water_flowing = 'default:water_flowing'

--[[
minetest.register_node("default:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	tiles ={"default_junglegrass.png"},
	inventory_image = "default_junglegrass.png",
	wield_image = "default_junglegrass.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=3,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})
--]]

--
-- ABM Helper
--

function sxmfarming.check_water_in_radius(radius, actualpos)
	for x1 = -radius, radius do 
			for z1 = -radius, radius do 
				local above = {x=actualpos.x+x1, y=actualpos.y, z=actualpos.z+z1}
				local name = minetest.get_node(above).name
				if name == sxmfarming.water or name == sxmfarming.water_flowing then
					return true
				end
		end
	end
	return false
end


uploadfile('nodes')
uploadfile('tools')

--
-- REGISTER HOE
--

sxmfarming.register_hoe('wood', 'Woodden', cwoodt, 10)
sxmfarming.register_hoe('stone', 'Stone', cstonet, 10)
sxmfarming.register_hoe('steel', 'Steel', csteelt, 10)
sxmfarming.register_hoe('copper', 'Copper', ccoppert, 10)
sxmfarming.register_hoe('gold', 'Gold', cgoldt, 10)
sxmfarming.register_hoe('mesite', 'Mesite', cmesitet, 10)


--
-- REGISTER ABM
--

minetest.register_abm({
	label = 'dry farmland to wet farmland',
    interval = 5.0,
    chance = 25,
	nodenames = {"sxmfarming:dry_farmland"},
	action = function(pos, node)
		local check1 = sxmfarming.check_water_in_radius(4, pos)
		if check1 == true then
			minetest.chat_send_all('sofarm')
			minetest.set_node(pos, minetest.registered_nodes['sxmfarming:wet_farmland'])
		end
	end,
})

minetest.register_abm({
	label = 'wet farmland to dry farmland',
    interval = 3.0,
    chance = 25,
	nodenames = {"sxmfarming:wet_farmland"},
	action = function(pos, node)
		local check1 = sxmfarming.check_water_in_radius(4, pos)
		if check1 == false then
			minetest.chat_send_all('difarm')
			minetest.set_node(pos, minetest.registered_nodes['sxmfarming:dry_farmland'])
		end
	end,
})