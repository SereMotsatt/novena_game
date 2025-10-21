
function default.check_a_node_in_radius(nodename, radius, actualpos)
	for x1 = -radius, radius do 
		for y1 = -radius, radius do 
			for z1 = -radius, radius do 
				local above = {x=actualpos.x+x1, y=actualpos.y+y1, z=actualpos.z+z1}
				local name = minetest.get_node(above).name
				if name == nodename then
					return true
				end
			end
		end
	end
	return false
end


minetest.register_abm({
	nodenames = {"default:leaves"},
	interval = 1.0,
	chance = 25,
	action = function(pos, node)
		if node.param2 == 0 then
			--minetest.chat_send_player('singleplayer', 'a')
			local node_bottom = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
			if node_bottom == 'air' then 
				local is_check = default.check_a_node_in_radius('default:tree', 4, pos)
				if is_check == false then minetest.spawn_falling_node(pos) end
			end
		end
	end
})