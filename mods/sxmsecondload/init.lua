
-- Opcionales

local sxmfarming_mod_exist = core.get_modpath('sxmfarming')

for i = 1, 3 do
	if sxmfarming_mod_exist then

		core.register_node("sxmsecondload:grass_"..i, {
			description = "Grass "..i,
			drawtype = "plantlike",
			waving = 1,
			tiles = {"default_grass_nb_"..i..".png"},
			inventory_image = "default_grass_nb_"..i..".png",
			wielditem = "default_grass_nb_"..i..".png",
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
		core.register_node("sxmsecondload:grass_"..i, {
			description = "Grass "..i,
			drawtype = "plantlike",
			waving = 1,
			tiles = {"default_grass_nb._"..i..".png"},
			inventory_image = "default_grass_nb_"..i..".png",
			wielditem = "default_grass_nb_"..i..".png",
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

	core.register_decoration({
		name = "sxmsecondload:grass_"..i,
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.075,
			spread = {x = 300, y = 300, z = 300},
			seed = 439,
			octaves = 2,
			persist = 1.0
		},
		y_max = 500,
		y_min = 1,
		decoration = "sxmsecondload:grass_"..i,
	})
	
end 