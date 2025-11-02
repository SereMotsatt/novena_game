-- minetest/default/mapgen.lua

--
-- Aliases for map generator outputs
--

minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_tree", "default:apple_tree")
minetest.register_alias("mapgen_leaves", "default:apple_leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_gravel", "default:gravel")
minetest.register_alias("mapgen_clay", "default:clay")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_cobble", "default:cobble")
minetest.register_alias("mapgen_mossycobble", "default:mossycobble")
minetest.register_alias("mapgen_dirt_with_grass", "default:dirt_with_grass")
minetest.register_alias("mapgen_junglegrass", "default:junglegrass")
minetest.register_alias("mapgen_stone_with_coal", "default:stone_with_coal")
minetest.register_alias("mapgen_stone_with_iron", "default:stone_with_iron")
minetest.register_alias("mapgen_mese", "default:mese")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")



if default.mg_get_name == "v6" then
		core.register_decoration({
			name = "default:papyrus",
			deco_type = "simple",
			place_on = {"default:dirt_with_grass", "default:sand"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.056,
				spread = {x = 300, y = 300, z = 300},
				seed = 2519,
				octaves = 2,
				persist = 0.1
			},
			y_max = 4,
			y_min = 1,
			spawn_by = "default:water_source",
			num_spawn_by = 1,
			height_max = 4,
			decoration = "default:papyrus",
		})
end


--
-- Clay generation
--

minetest.register_ore({
	ore_type       = "blob",
	ore            = "default:clay",
	wherein        = "default:sand",
	clust_scarcity = 8*8*8,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = -100,
	y_max     = -1,
})


--
-- Ore generation
--

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_coal",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = -31000,
	y_max     = 64,
})

-- Iron

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 16*16*16,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = -5,
	y_max     = 7,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = -16,
	y_max     = -5,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = -31000,
	y_max     = -17,
})

-- Copper

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_copper",
	wherein        = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = -31000,
	y_max     = 10,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_copper",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = -20,
	y_max     = 10,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_copper",
	wherein        = "default:stone",
	clust_scarcity = 16*16*16,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = 0,
	y_max     = 64,
})

-- Mesite

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_mesite",
	wherein        = "default:stone",
	clust_scarcity = 14*14*14,
	clust_num_ores = 5,
	clust_size     = 4,
	y_min     = -31000,
	y_max     = -20,
})

-- for float islands and far scaled
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_coal",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = 200,
	y_max     = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min     = 200,
	y_max     = 31000,
})

--
-- No para mg v6
--
--Rediseñar esto
if default.mg_get_name ~= "v6" then

core.register_biome({
	name = 'grasslands',
	node_top = 'default:dirt_with_grass',
    depth_top = 1,
	node_filler = 'default:dirt',
	depth_filler = 3,
    node_stone = "default:stone",
	y_max = 200,
    y_min = 3,
    heat_point = 50,
    humidity_point = 50,
})

core.register_biome({
	name = 'grasslands_ocean',
	node_top = 'default:sand',
    depth_top = 1,
	node_filler = 'default:sand',
	depth_filler = 2,
    node_stone = "default:stone",
	y_max = 2,
    y_min = -100,
    heat_point = 50,
    humidity_point = 50,
})

core.register_biome({
	name = 'temperate_forest',
	node_top = 'default:dirt_with_grass',
    depth_top = 1,
	node_filler = 'default:dirt',
	depth_filler = 3,
    node_stone = "default:stone",
	y_max = 200,
    y_min = 3,
    heat_point = 30,
    humidity_point = 70,
})

core.register_biome({
	name = 'temperate_forest_ocean',
	node_top = 'default:sand',
    depth_top = 1,
	node_filler = 'default:sand',
	depth_filler = 2,
    node_stone = "default:stone",
	y_max = 2,
    y_min = -100,
    heat_point = 30,
	weight = 1.0,
    humidity_point = 70,
})


core.register_biome({
	name = 'swamp',
	node_top = 'default:dirt_with_marshy_grass',
    depth_top = 1,
	node_filler = 'default:marshy_dirt',
	depth_filler = 3,
    node_stone = "default:stone",
	y_max = 32,
	vertical_blend = 8,
    y_min = 1,
    heat_point = 70,
	weight = 2.0,
    humidity_point = 80,
})

core.register_biome({
	name = 'swamp_ocean',
	node_top = 'default:marshy_dirt',
    depth_top = 1,
	node_filler = 'default:marshy_dirt',
	depth_filler = 2,
    node_stone = "default:stone",
	y_max = 0,
    y_min = -100,
    heat_point = 70,
	weight = 2.0,
    humidity_point = 80,
})

end


if default.mg_get_name ~= "v6" then
core.register_decoration({
	name = "default:apple_tree",
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
    sidelen = 16,
    fill_ratio = 0.02,
    noise_params = {
        offset = 0,
        scale = 0.025,
        spread = {x = 100, y = 100, z = 100},
        seed = 354,
        octaves = 3,
        persistence = 0.7,
        lacunarity = 2.0,
        flags = "absvalue"
    },
    biomes = {"temperate_forest"},
    y_min = 1,
    y_max = 500,
    flags = "place_center_x, place_center_z",
    rotation = "random",
    schematic = "schematics/manzano.mts",
})

core.register_decoration({
	name = "default:oak_tree",
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
    sidelen = 16,
    fill_ratio = 0.02,
    noise_params = {
        offset = 0,
        scale = 0.035,
        spread = {x = 100, y = 100, z = 100},
        seed = 556,
        octaves = 2,
        persistence = 0.7,
        lacunarity = 2.0,
        flags = "absvalue"
    },
    biomes = {"temperate_forest"},
    y_min = 1,
    y_max = 500,
    flags = "place_center_x, place_center_z",
    rotation = "random",
    schematic = "schematics/roble.mts",
})

core.register_decoration({
	name = "default:fern",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.075,
		spread = {x = 300, y = 300, z = 300},
		seed = 235,
		octaves = 2,
		persist = 0.7
	},
	biomes = {"temperate_forest"},
	y_max = 500,
	y_min = 1,
	decoration = "default:fern",
})

end
--[[
minetest.register_on_generated(function(minp, maxp, seed)

	-- Generate clay
	if maxp.y >= 2 and minp.y <= 0 then
		-- Assume X and Z lengths are equal
		local divlen = 4
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0+1,divs-1-1 do
		for divz=0+1,divs-1-1 do
			local cx = minp.x + math.floor((divx+0.5)*divlen)
			local cz = minp.z + math.floor((divz+0.5)*divlen)
			if minetest.get_node({x=cx,y=1,z=cz}).name == "default:water_source" and
					minetest.get_node({x=cx,y=0,z=cz}).name == "default:sand" then
				local is_shallow = true
				local num_water_around = 0
				if minetest.get_node({x=cx-divlen*2,y=1,z=cz+0}).name == "default:water_source" then
					num_water_around = num_water_around + 1 end
				if minetest.get_node({x=cx+divlen*2,y=1,z=cz+0}).name == "default:water_source" then
					num_water_around = num_water_around + 1 end
				if minetest.get_node({x=cx+0,y=1,z=cz-divlen*2}).name == "default:water_source" then
					num_water_around = num_water_around + 1 end
				if minetest.get_node({x=cx+0,y=1,z=cz+divlen*2}).name == "default:water_source" then
					num_water_around = num_water_around + 1 end
				if num_water_around >= 2 then
					is_shallow = false
				end	
				if is_shallow then
					for x1=-divlen,divlen do
					for z1=-divlen,divlen do
						if minetest.get_node({x=cx+x1,y=0,z=cz+z1}).name == "default:sand" then
							minetest.set_node({x=cx+x1,y=0,z=cz+z1}, {name="default:clay"})
						end
					end
					end
				end
			end
		end
		end
	end
	
end)

--]]