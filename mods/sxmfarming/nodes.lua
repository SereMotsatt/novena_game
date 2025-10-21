
-- FARMLAND BLOCK

minetest.register_node("sxmfarming:dry_farmland", {
	description = "Dry Farmland",
	tiles ={"sxmfarming_farmland.png", "default_dirt.png", "default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
})

minetest.register_node("sxmfarming:wet_farmland", {
	description = "Wet farmland",
	tiles ={"sxmfarming_farmland.png^[hsl:0:-10:-40", "default_dirt.png", "default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
})

-- WHEAT CODE

minetest.register_node("sxmfarming:wheat_1", {
	description = "Wheat 1",
	drawtype = "plantlike",
	tiles = {"sxmfarming_wheat_1.png"},
	inventory_image = "sxmfarming_wheat_1.png",
	wield_image = "sxmfarming_wheat_1.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=3,attached_node=1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("sxmfarming:wheat_2", {
	description = "Wheat 2",
	drawtype = "plantlike",
	tiles = {"sxmfarming_wheat_2.png"},
	inventory_image = "sxmfarming_wheat_2.png",
	wield_image = "sxmfarming_wheat_2.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=3,attached_node=1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("sxmfarming:wheat_3", {
	description = "Wheat 3",
	drawtype = "plantlike",
	tiles = {"sxmfarming_wheat_3.png"},
	inventory_image = "sxmfarming_wheat_3.png",
	wield_image = "sxmfarming_wheat_3.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=3,attached_node=1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("sxmfarming:wheat_4", {
	description = "Wheat 4",
	drawtype = "plantlike",
	tiles = {"sxmfarming_wheat_4.png"},
	inventory_image = "sxmfarming_wheat_4.png",
	wield_image = "sxmfarming_wheat_4.png",
	paramtype = "light",
	drop = {
		max_items = 1,
		items = {
			{
				items = {'sxmfarming:wheat', 'sxmfarming:wheat_seed 3'},
				rarity = 5,
			},
			{
				items = {'sxmfarming:wheat', 'sxmfarming:wheat_seed 2'},
			}
		}
	},
	walkable = false,
	groups = {snappy=3,attached_node=1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
})