
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