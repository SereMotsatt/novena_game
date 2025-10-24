
--
-- SXM Doors
--

sxmdoors = {}
--sxmdoors.all_reg_doors = {} 

-- Helpers

sxmGN = core.get_node
sxmGIG = core.get_item_group

core.register_node("sxmdoors:invi_node", {
	--description = "Door test",
	tiles = {"default_cloud.png"},
	drawtype = "nodebox",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {}
	},
	paramtype = "light",
	groups = {snappy=3,attached_node=1},
})

uploadfile('api')



sxmdoors.register_door('sxmdoors', 'door_wood', 'Woodden door', 'sxmdoors_door_wood.png','group:wood')
sxmdoors.register_door('sxmdoors', 'door_gold', 'Gold door', 'sxmdoors_door_gold.png','default:gold_ingot')
sxmdoors.register_door('sxmdoors', 'door_steel', 'Steel door', 'sxmdoors_door_steel.png','default:steel_ingot')

-- FINAL Helpers

core.register_on_dignode(function(pos, oldnode, digger)
	local node_name = oldnode.name
	local pos_up = {x=pos.x, y=pos.y+1, z=pos.z}
	check_is_door = core.get_node(pos_up).name
	if sxmGIG(check_is_door, 'door') > 0 then
		core.dig_node(pos_up)
	end
end)