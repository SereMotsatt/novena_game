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

sxmfarming.farming_abm_node_from_to('sxmfarming:wheat_1', 'sxmfarming:wheat_2')
sxmfarming.farming_abm_node_from_to('sxmfarming:wheat_2', 'sxmfarming:wheat_3')
sxmfarming.farming_abm_node_from_to('sxmfarming:wheat_3', 'sxmfarming:wheat_4')