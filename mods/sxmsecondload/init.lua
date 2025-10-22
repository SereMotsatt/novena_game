
-- Opcionales

local sxmfarming_mod_exist = minetest.get_modpath('sxmfarming')


if sxmfarming_mod_exist then

	minetest.register_node("sxmsecondload:grass", {
		description = "Grass",
		drawtype = "plantlike",
		tiles = {"default_grass_nb.png"},
		inventory_image = "default_grass_nb.png",
		wielditem = "default_grass_nb.png",
		paramtype = "light",
		drop = {
			max_items = 1,
			items = {
				{
					items = {''},
					rarity = 5,
				},
				{
					items = {'sxmfarming:wheat_seed'},
				}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.37,-0.5,-0.37,0.37,0.37,0.37},
			}
		},
		walkable = false,
		groups = {snappy=3,attached_node=1},
		sounds = default.node_sound_leaves_defaults(),
	})
else
	minetest.register_node("sxmsecondload:grass", {
		description = "Grass",
		drawtype = "plantlike",
		tiles = {"default_grass_nb.png"},
		inventory_image = "default_grass_nb.png",
		wielditem = "default_grass_nb.png",
		paramtype = "light",
		drop = '',
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.37,-0.5,-0.37,0.37,0.37,0.37},
			}
		},
		walkable = false,
		groups = {snappy=3,attached_node=1},
		sounds = default.node_sound_leaves_defaults(),
	})
end
