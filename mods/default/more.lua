


dft.register_node("default:lantern", {
	description = "Lantern",
	drawtype = "nodebox",
	tiles = {"default_lantern_top.png","default_lantern_bottom.png","default_lantern_side.png"},
	--inventory_image = "default_lantern.png",
	--wield_image = "default_lantern.png",
	paramtype = "light",
	--is_ground_content = true,
	light_source = 14,
	node_box = {
		type = "connected",
		disconnected_top = {{-1/6, 0.0, -1/6, 1/6, 1/6, 1/6},
							 {-1/4, -1/2, -1/4, 1/4, 0.0, 1/4}},
		connect_top = {{-1/6, 0.0, -1/6, 1/6, 1/6, 1/6},
					  {-1/4, -1/2, -1/4, 1/4, 0.0, 1/4},
					  {-1/16, 0.0, -1/16, 1/16, 1/2, 1/16}},
				 --{-0.1, -0.5, -0.1, 0.1, -0.25, 0.1}},
	},
	--[[selection_box = {
		type = "connected",
		fixed = {{-1/6, 0.0, -1/6, 1/6, 1/6, 1/6},
				 {-1/4, -1/2, -1/4, 1/4, 0.0, 1/4}},
	},--]]
	connects_to = {'group:cracky', 'group:choppy'},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
    output = "default:lantern",
    recipe = {
        {"", "default:steel_nugget", ""},
        {"default:steel_nugget", "default:glass", "default:steel_nugget"},
		{"default:steel_nugget", "default:torch", "default:steel_nugget"},
    }
})


-- Steel Complements

dft.register_craftitem("default:sheet_steel", {
	description = "Sheet steel",
	inventory_image = "default_sheet_steel.png",
})

dft.register_node("default:fence_steel", {
	description = "Steel fence",
	drawtype = "fencelike",
	tiles = {'default_blockauto_base.png^[hsl'..csteelt},
	inventory_image = 'default_fence_white_base.png^[hsl'..csteelt,
	wield_image = 'default_fence_white_base.png^[hsl'..csteelt,
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2},
	--sounds = default.node_sound_wood_defaults(),
})

-- Steel Craft

minetest.register_craft({
    output = "default:fence_steel 2",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
    }
})

-- Copper Complements

dft.register_node("default:copper_ladder", {
	description = "Copper ladder",
	drawtype = "signlike",
	tiles ={"default_copper_ladder.png"},
	inventory_image = "default_copper_ladder.png",
	wield_image = "default_copper_ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(), --change this
})

dft.register_node("default:copper_ladder_with_mesite", {
	description = "Copper ladder with mesite",
	drawtype = "signlike",
	tiles ={"default_copper_ladder_wm.png"},
	inventory_image = "default_copper_ladder_wm.png",
	wield_image = "default_copper_ladder_wm.png",
	paramtype = "light",
	light_source = 12,
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(), --change this
})

dft.register_node("default:fence_copper", {
	description = "Copper fence",
	drawtype = "fencelike",
	tiles = {'default_blockauto_base.png^[hsl'..ccoppert},
	inventory_image = 'default_fence_white_base.png^[hsl'..ccoppert,
	wield_image = 'default_fence_white_base.png^[hsl'..ccoppert,
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2},
	--sounds = default.node_sound_wood_defaults(),
})

-- Copper Craft

minetest.register_craft({
    output = "default:copper_ladder 3",
    recipe = {
        {"default:copper_ingot", "", "default:copper_ingot"},
        {"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
        {"default:copper_ingot", "", "default:copper_ingot"},
    }
})

minetest.register_craft({
    output = "default:copper_ladder_with_mesite",
    recipe = {
        {"default:mesite_ingot", "default:copper_ladder", "default:mesite_ingot"},
    }
})

minetest.register_craft({
    output = "default:fence_copper 2",
    recipe = {
        {"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
        {"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
    }
})

-- Stone

dft.register_node("default:stone_smooth", {
	description = "Stone smooth",
	tiles = {'default_stone_smooth.png'},
	is_ground_content = false,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

dft.register_node("default:stone_brick", {
	description = "Stone brick",
	tiles = {'default_stone_brick.png'},
	is_ground_content = false,
	paramtype2 = "facedir",
	place_param2 = 0,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

dft.register_node("default:stone_brick_moosy", {
	description = "Stone brick mossy",
	tiles = {'default_stone_brick_mossy.png'},
	is_ground_content = false,
	paramtype2 = "facedir",
	place_param2 = 0,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

dft.register_node("default:stone_pillar", {
	description = "Stone pillar",
	tiles = {'default_stone_pillar_top.png', 'default_stone_pillar_top.png', 'default_stone_pillar.png'},
	is_ground_content = false,
	paramtype2 = "wallmounted",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

dft.register_node("default:stone_pillar_edge", {
	description = "Stone pillar edge",
	tiles = {'default_stone_pillar_top.png', 'default_stone_pillar_top.png', 'default_stone_pillar_edge.png'},
	is_ground_content = false,
	paramtype2 = "wallmounted",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

-- Stone Craft

minetest.register_craft({
	type = "cooking",
	output = "default:stone_smooth",
	recipe = "default:stone",
})

minetest.register_craft({
    output = "default:stone_brick",
    recipe = {
        {"default:stone", "default:stone"},
        {"default:stone", "default:stone"},
    }
})

-- Cutter
-- NECESITO MEJORAR ESTE CODIGO JAJAAJAJAJAJAJA, ES QUE NO ENTENDI EL 'lua_api.md'


dft.register_node('default:cutter', {
	description = "Cutter",
	tiles = {'default_stone_smooth.png'},
	drawtype = "nodebox",
	is_ground_content = false,
	groups = {cracky=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5},
			{-0.5,0,-0.5,-0.25,0.25,-0.25},
			{0.5,0,0.5,0.25,0.25,0.25},
			{-0.5,0,0.5,-0.25,0.25,0.25},
			{0.5,0,-0.5,0.25,0.25,-0.25},
		},
	},
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_int("noiop", 0)
			meta:set_string("formspec",
					"size[8,9]"..
					"list[context;source;2,1.5;1,1;]"..
					"list[context;outputs;4,0;4,4;]"..
					"list[current_player;main;0,5;8,4;]")
			meta:set_string("infotext", "Cutter")
			meta:set_string("owner", "")
			local inv = meta:get_inventory()
			inv:set_size("main", 8*4)
			inv:set_size("source", 3)
			inv:set_size("outputs", 8*8)
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if listname == "outputs" then return 0 end
		return 1
	end,
})

core.register_craft({
	output = "default:cutter",
	recipe = {
        {"default:stone", "default:mesite_ingot", "default:stone"},
        {"default:stone", "default:stone", "default:stone"},
    }
})

cutter_recipes = {}

function register_cutter(input, output)
	for i = 1, #cutter_recipes do
		if cutter_recipes[i][1] == input then
			table.insert(cutter_recipes[i], output)
			return
		end
	end
	table.insert(cutter_recipes, {input, output})
end

core.register_abm({
	nodenames = {"default:cutter"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local meta = core.get_meta(pos)
		local inv = meta:get_inventory()

		local source_list = inv:get_list("source")
		local outputs_list = inv:get_list("outputs")
		local source_name = source_list[1]:get_name()
		local outputs1_name = outputs_list[1]:get_name()
		--core.chat_send_all(source_name)
		if source_name == "" and outputs1_name == "" then
			meta:set_int("noiop", 0)
			return
		end
		
		if meta:get_int("noiop") > 0 then
			core.chat_send_all("chambing")
			for i = 1, meta:get_int("noiop") do
				if outputs_list[i]:get_name() == "" then
					inv:remove_item("source", source_name)
					source_name = ""
					meta:set_int("noiop", 0)
				end
			end
		end
		
		for i = 1, #cutter_recipes do
			if source_name == "" then
				--for b = 1, #outputs_list do
					--inv:remove_item("outputs", outputs_list[b]:get_name())
				--end
				inv:set_list('outputs', {})
				meta:set_int("noiop", 0)
			end
			if outputs_list[1]:get_name() ~= "" then break end
			if cutter_recipes[i][1] == source_name then
				for k = 2, #cutter_recipes[i] do
					inv:add_item("outputs", cutter_recipes[i][k])
					core.chat_send_all(cutter_recipes[i][k])
					meta:set_int("noiop", meta:get_int("noiop")+1)
				end
			end
		end

	end,
})

register_cutter('default:stone', 'default:stone_brick')
register_cutter('default:stone', 'default:stone_smooth')
register_cutter('default:stone', 'default:stone_pillar')
register_cutter('default:stone', 'default:stone_pillar_edge')
register_cutter('default:cobble', 'default:stone_brick')
register_cutter('default:cobble', 'default:stone_smooth')
register_cutter('default:tree', 'default:wood 6')