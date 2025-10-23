
--
-- SXM Doors
--

sxmdoors = {}
sxmdoors.all_reg_doors = {} 

-- Helpers

local sayall = core.chat_send_all

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



sxmdoors.register_door('sxmdoors', 'door_wood', 'Woodden door', 'default_wood.png','group:wood')

-- FINAL Helpers

core.register_on_dignode(function(pos, oldnode, digger)
	local node_name = oldnode.name
	local pos_up = {x=pos.x, y=pos.y+1, z=pos.z}
	check_is_door = core.get_node(pos_up).name
	for i in pairs(sxmdoors.all_reg_doors) do
		if check_is_door == sxmdoors.all_reg_doors[i] then
			core.dig_node(pos_up)
		end
	end
end)