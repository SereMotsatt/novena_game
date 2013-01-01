-- SXM Flowers

sxmflowers = {}
sxmflowers.dye_powder = {}


function sxmflowers.register_flower(inref)
	
	-- Para mas seguridad hice otra tabla
	local ref = {
		modname = inref.modname or 'sxmflowers',
		subname = inref.subname or 'none',
		description = inref.description or 'Nil description',
		drawtype = inref.drawtype or 'plantlike',
		seed = inref.seed or 200, -- No recomendado dejarlo en 'default'
		tiles = inref.tiles or 'no_texture_airlike.png',
		groups = inref.groups or {snappy=3,attached_node=1},
		height = inref.height or 1,
		hex = inref.hex or '#FFFFFF'
	}
	ref.height = ref.height / 10
	if ref.subname == 'none' then return end
	
	core.register_node(ref.modname..':flower_'..ref.subname, {
		description = ref.description,
		drawtype = ref.drawtype,
		paramtype = "light",
		sunlight_propagates = true,
		tiles = {ref.tiles},
		inventory_image = ref.tiles,
		wield_image = ref.tiles,
		walkable = false,
		selection_box = {
			type = 'fixed',
			fixed = {{-ref.height,-0.5,-ref.height,ref.height,0,ref.height},},
		},
		is_ground_content = false,
		groups = ref.groups,
		sounds = default.node_sound_leaves_defaults(),
	})
	
	core.register_craftitem(ref.modname..':dye_powder_'..ref.subname, {
		description = 'Dye powder '..ref.description,
		inventory_image = "sxmflowers_dye_powder_base.png^[colorize:"..ref.hex..":200",
	})
	table.insert(sxmflowers.dye_powder, {ref.modname..':dye_powder_'..ref.subname, ref.hex})
	core.register_craft({
		output = ref.modname..':dye_powder_'..ref.subname,
		recipe = {
			{ref.modname..':flower_'..ref.subname},
		}
	})
	if default.mg_get_name == "v6" then
		core.register_decoration({
			name = ref.modname..':flower_'..ref.subname,
			deco_type = "simple",
			place_on = {"default:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.016,
				spread = {x = 300, y = 300, z = 300},
				seed = ref.seed,
				octaves = 2,
				persist = 0.1
			},
			y_max = 30,
			y_min = 1,
			decoration = ref.modname..':flower_'..ref.subname
		})
	else
		core.register_decoration({
			name = ref.modname..':temperate_forest_flower_'..ref.subname,
			deco_type = "simple",
			place_on = {"default:dirt_with_grass"},
			biomes = {"temperate_forest"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.011,
				spread = {x = 300, y = 300, z = 300},
				seed = ref.seed,
				octaves = 2,
				persist = 0.1
			},
			y_max = 30,
			y_min = 1,
			decoration = ref.modname..':flower_'..ref.subname
		})
		
		core.register_decoration({
			name = ref.modname..':grasslands_flower_'..ref.subname,
			deco_type = "simple",
			place_on = {"default:dirt_with_grass"},
			biomes = {"grasslands"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.016,
				spread = {x = 300, y = 300, z = 300},
				seed = ref.seed,
				octaves = 2,
				persist = 0.1
			},
			y_max = 30,
			y_min = 1,
			decoration = ref.modname..':flower_'..ref.subname
		})
	end
end

sxmflowers.register_flower({
	subname = 'rose',
	description = 'Rose',
	tiles = 'sxmflowers_rose.png',
	seed = 200,
	hex = '#AA2211'
})

sxmflowers.register_flower({
	subname = 'daisy',
	description = 'Daisy',
	tiles = 'sxmflowers_daisy.png',
	seed = 499,
	hex = '#CCCCCC'
})

sxmflowers.register_flower({
	subname = 'bluebell',
	description = 'Bluebell',
	tiles = 'sxmflowers_bluebell.png',
	seed = 592,
	height = 4,
	hex = '#1118AA'
})

sxmflowers.register_flower({
	subname = 'lavender',
	description = 'Lavender',
	tiles = 'sxmflowers_lavender.png',
	seed = 991,
	hex = '#A020F0'
})

--water_lily

core.register_node('sxmflowers:water_lily', {
	description = 'Water lily',
	drawtype = 'nodebox',
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = 'clip',
	liquids_pointable = true,
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.49,-0.5,0.5,-0.49,0.5}},
	},
	inventory_image = 'sxmflowers_water_lily.png',
	wield_image = 'sxmflowers_water_lily.png',
	tiles = {'sxmflowers_water_lily.png', 'sxmflowers_water_lily_bottom.png', 'sxmflowers_water_lily.png'},
	groups = {snappy=3},
})

if default.mg_get_name == "v6" then
	core.register_decoration({
		name = 'sxmflowers:water_lily',
		deco_type = "simple",
		place_on = {"default:dirt", "default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.146,
			spread = {x = 300, y = 300, z = 300},
			seed = 3125,
			octaves = 2,
			persist = 0.1
		},
		y_max = 0,
		y_min = 0,
		place_offset_y = 1,
		decoration = 'sxmflowers:water_lily',
	})
end