
materials.register_material('copper', "copper_1", "Copper oxide 1", ccoppert, oxide_ptn_1_t, nil, true)
materials.register_material('copper', "copper_2", "Copper oxide 2", ccoppert, oxide_ptn_2_t, nil, true)
materials.register_material('copper', "copper_3", "Copper oxide 3", ccoppert, oxide_ptn_3_t, nil, true)

stairs.register_stair_and_slab("copper_1", "default:copper_1_block",
		{cracky=2},
		stairsslab_tco1,
		"Copper oxide 1 stair",
		"Copper oxide 1 slab",
		'copper')
		
stairs.register_stair_and_slab("copper_2", "default:copper_2_block",
		{cracky=2},
		stairsslab_tco2,
		"Copper oxide 2 stair",
		"Copper oxide 2 slab",
		'copper')
		
stairs.register_stair_and_slab("copper_3", "default:copper_3_block",
		{cracky=2},
		stairsslab_tco3,
		"Copper oxide 3 stair",
		"Copper oxide 3 slab",
		'copper')
		
panes.register_bars('copper', 'copper_1', 'Copper oxide 1 bars', ccoppert..'^'..oxide_ptn_metal_bars_1)
panes.register_bars('copper', 'copper_2', 'Copper oxide 2 bars', ccoppert..'^'..oxide_ptn_metal_bars_2)
panes.register_bars('copper', 'copper_3', 'Copper oxide 3 bars', ccoppert..'^'..oxide_ptn_metal_bars_3)

--
-- More Nodes (Not auto)
--


-- Fences

minetest.register_node("copper:fence_copper_1", {
	description = "Copper oxide 1 Fence",
	drawtype = "fencelike",
	tiles = {'default_blockauto_base.png^[hsl'..ccoppert..'^'..oxide_ptn_1_t},
	inventory_image = 'default_fence_white_base.png^[hsl'..ccoppert..'^'..fence_oxide_ptn_1_t,
	wield_image = 'default_fence_white_base.png^[hsl'..ccoppert..'^'..fence_oxide_ptn_1_t,
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2},
	--sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("copper:fence_copper_2", {
	description = "Copper oxide 2 Fence",
	drawtype = "fencelike",
	tiles = {'default_blockauto_base.png^[hsl'..ccoppert..'^'..oxide_ptn_2_t},
	inventory_image = 'default_fence_white_base.png^[hsl'..ccoppert..'^'..fence_oxide_ptn_2_t,
	wield_image = 'default_fence_white_base.png^[hsl'..ccoppert..'^'..fence_oxide_ptn_2_t,
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2},
	--sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("copper:fence_copper_3", {
	description = "Copper oxide 3 Fence",
	drawtype = "fencelike",
	tiles = {'default_blockauto_base.png^[hsl'..ccoppert..'^'..oxide_ptn_3_t},
	inventory_image = 'default_fence_white_base.png^[hsl'..ccoppert..'^'..fence_oxide_ptn_3_t,
	wield_image = 'default_fence_white_base.png^[hsl'..ccoppert..'^'..fence_oxide_ptn_3_t,
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2},
	--sounds = default.node_sound_wood_defaults(),
})


--
-- Ladders
--

minetest.register_node("copper:copper_ladder_1", {
	description = "Copper oxide 1 Ladder",
	drawtype = "signlike",
	tiles = {"default_copper_ladder.png^"..ladder_oxide_ptn_1_t},
	inventory_image = "default_copper_ladder.png^"..ladder_oxide_ptn_1_t,
	wield_image = "default_copper_ladder.png^"..ladder_oxide_ptn_1_t,
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

minetest.register_node("copper:copper_ladder_2", {
	description = "Copper oxide 2 Ladder",
	drawtype = "signlike",
	tiles ={"default_copper_ladder.png^"..ladder_oxide_ptn_2_t},
	inventory_image = "default_copper_ladder.png^"..ladder_oxide_ptn_2_t,
	wield_image = "default_copper_ladder.png^"..ladder_oxide_ptn_2_t,
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

minetest.register_node("copper:copper_ladder_3", {
	description = "Copper oxide 3 Ladder",
	drawtype = "signlike",
	tiles ={"default_copper_ladder.png^"..ladder_oxide_ptn_3_t},
	inventory_image = "default_copper_ladder.png^"..ladder_oxide_ptn_3_t,
	wield_image = "default_copper_ladder.png^"..ladder_oxide_ptn_3_t,
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

minetest.register_node("copper:copper_ladder_with_mesite_1", {
	description = "Copper Ladder with mesite",
	drawtype = "signlike",
	tiles ={"default_copper_ladder_wm.png^"..ladder_oxide_ptn_1_t},
	inventory_image = "default_copper_ladder_wm.png^"..ladder_oxide_ptn_1_t,
	wield_image = "default_copper_ladder_wm.png^"..ladder_oxide_ptn_1_t,
	paramtype = "light",
	light_source = 8,
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

minetest.register_node("copper:copper_ladder_with_mesite_2", {
	description = "Copper Ladder with mesite",
	drawtype = "signlike",
	tiles ={"default_copper_ladder_wm.png^"..ladder_oxide_ptn_2_t},
	inventory_image = "default_copper_ladder_wm.png^"..ladder_oxide_ptn_2_t,
	wield_image = "default_copper_ladder_wm.png^"..ladder_oxide_ptn_2_t,
	paramtype = "light",
	light_source = 6,
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

minetest.register_node("copper:copper_ladder_with_mesite_3", {
	description = "Copper Ladder with mesite",
	drawtype = "signlike",
	tiles ={"default_copper_ladder_wm.png^"..ladder_oxide_ptn_3_t},
	inventory_image = "default_copper_ladder_wm.png^"..ladder_oxide_ptn_3_t,
	wield_image = "default_copper_ladder_wm.png^"..ladder_oxide_ptn_3_t,
	paramtype = "light",
	light_source = 4,
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