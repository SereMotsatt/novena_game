


minetest.register_node("default:lantern", {
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

minetest.register_craftitem("default:sheet_steel", {
	description = "Sheet Steel",
	inventory_image = "default_sheet_steel.png",
})

minetest.register_node("default:fence_steel", {
	description = "Steel Fence",
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

minetest.register_node("default:copper_ladder", {
	description = "Copper Ladder",
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

minetest.register_node("default:copper_ladder_with_mesite", {
	description = "Copper Ladder with mesite",
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

minetest.register_node("default:fence_copper", {
	description = "Copper Fence",
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