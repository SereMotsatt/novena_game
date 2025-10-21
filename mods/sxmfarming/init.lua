--
-- sxm Farming, SereXmotsatt
--

sxmfarming = {}
sxmfarming.water = 'default:water_source'
sxmfarming.water_flowing = 'default:water_flowing'

uploadfile('functions')


--
-- REGISTER WHEAT ITEM
--

minetest.register_craftitem("sxmfarming:wheat", {
	description = "Wheat",
	inventory_image = "sxmfarming_wheat.png",
})

minetest.register_craftitem("sxmfarming:wheat_seed", {
	description = "Wheat seed",
	inventory_image = "sxmfarming_wheat_seed.png",
	on_place = function(itemstack, placer, pointed_thing)
		return sxmfarming.seed_place(itemstack, user, pointed_thing, 'sxmfarming:wheat_1')
	end,
})


uploadfile('nodes')


--
-- REGISTER HOE
--

sxmfarming.register_hoe('wood', 'Woodden', cwoodt, 10)
sxmfarming.register_hoe('stone', 'Stone', cstonet, 10)
sxmfarming.register_hoe('steel', 'Steel', csteelt, 10)
sxmfarming.register_hoe('copper', 'Copper', ccoppert, 10)
sxmfarming.register_hoe('gold', 'Gold', cgoldt, 10)
sxmfarming.register_hoe('mesite', 'Mesite', cmesitet, 10)

uploadfile('abm')
