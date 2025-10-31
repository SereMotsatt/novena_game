stairs = {}
local ll = LA('stairs')
-- Node will be called stairs:stair_<subname>
function stairs.register_stair(subname, recipeitem, groups, images, description, modname)
	modname = modname or 'stairs'
	minetest.register_node(modname..":stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
	})

	minetest.register_craft({
		output = modname..':stair_' .. subname .. ' 6',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Node will be called stairs:slab_<subname>
function stairs.register_slab(subname, recipeitem, groups, images, description, modname)
	modname = modname or 'stairs'
	minetest.register_node(modname..":slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		place_param2 = 1,
		paramtype = "light",
		paramtype2 = "wallmounted",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		--after_place_node = function(pos, placer, itemstack, pointed_thing)
			--local pointed_node = minetest.get_node(pos)
			--local pointed_node_pos = pointed_node.
			--local new_node = minetest.get_node(pos)
			--minetest.chat_send_all(pointed_thing.intersection_normal)
			--minetest.set_node(pos, new_node)
			--minetest.remove_node(pos)
		--end,
	})

	minetest.register_craft({
		output = modname..':slab_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})

	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{'', modname..':slab_' .. subname, ''},
			{'', modname..':slab_' .. subname, ''},
		},
	})
end

-- Nodes will be called stairs:{stair,slab}_<subname>
function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab, modname)
	stairs.register_stair(subname, recipeitem, groups, images, ll(desc_stair), modname)
	stairs.register_slab(subname, recipeitem, groups, images, ll(desc_slab), modname)
end

stairs.register_stair_and_slab("wood", "default:wood",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2},
		{"default_wood.png"},
		"Wooden stair",
		"Wooden slab")

stairs.register_stair_and_slab("stone", "default:stone",
		{cracky=3},
		{"default_stone.png"},
		"Stone stair",
		"Stone slab")

stairs.register_stair_and_slab("cobble", "default:cobble",
		{cracky=3},
		{"default_cobble.png"},
		"Cobble stair",
		"Cobble slab")
		
stairs.register_stair_and_slab("stone_smooth", "default:stone_smooth",
		{cracky=3},
		{"default_stone_smooth.png"},
		"Stone smooth stair",
		"Stone smooth slab")
		
stairs.register_stair_and_slab("stone_brick", "default:stone_brick",
		{cracky=3},
		{"default_stone_brick.png"},
		"Stone brick stair",
		"Stone brick slab")
		
stairs.register_stair_and_slab("stone_brick_mossy", "default:stone_brick_mossy",
		{cracky=3},
		{"default_stone_brick_mossy.png"},
		"Stone brick mossy stair",
		"Stone brick mossy slab")
		
stairs.register_stair_and_slab("copper", "default:copper_block",
		{cracky=2},
		{default.blockauto..'^[hsl'..ccoppert, default.blockauto..'^[hsl'..ccoppert ,default.blockauto_side..'^[hsl'..ccoppert},
		"Copper stair",
		"Copper slab")

stairs.register_stair_and_slab("steel", "default:steel_block",
		{cracky=2},
		{default.blockauto..'^[hsl'..csteelt, default.blockauto..'^[hsl'..csteelt ,default.blockauto_side..'^[hsl'..csteelt},
		"Steel stair",
		"Steel slab")
		

stairs.register_stair_and_slab("brick", "default:brick",
		{cracky=3},
		{"default_brick.png"},
		"Brick stair",
		"Brick slab")

stairs.register_stair_and_slab("sandstone", "default:sandstone",
		{crumbly=2,cracky=2},
		{"default_sandstone.png"},
		"Sandstone stair",
		"Sandstone slab")

register_cutter('default:stone', 'stairs:stair_stone')
register_cutter('default:stone', 'stairs:slab_stone 2')
register_cutter('default:cobble', 'stairs:stair_cobble')
register_cutter('default:cobble', 'stairs:slab_cobble 2')
register_cutter('default:wood', 'stairs:stair_wood')
register_cutter('default:wood', 'stairs:slab_wood 2')