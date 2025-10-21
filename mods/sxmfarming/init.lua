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


--
-- REGISTER FOOD
--

minetest.register_craftitem("sxmfarming:bread", {
	description = "Bread",
	inventory_image = "sxmfarming_bread.png",
	on_use = minetest.item_eat(5),
})


uploadfile('nodes')


--
-- REGISTER HOE
--

sxmfarming.register_hoe('wood', 'Woodden', 'default:wood', cwoodt, 10)
sxmfarming.register_hoe('stone', 'Stone', 'default:cobble', cstonet, 17)
sxmfarming.register_hoe('steel', 'Steel', 'default:steel_ingot', csteelt, 25)
sxmfarming.register_hoe('copper', 'Copper', 'default:copper__ingot', ccoppert, 20)
sxmfarming.register_hoe('gold', 'Gold', 'default:gold_ingot', cgoldt, 15)
-- Me Falta La Azada De Damasco
sxmfarming.register_hoe('mesite', 'Mesite', 'default:mesite_ingot', cmesitet, 35)

uploadfile('abm')

--
-- REGISTER CRAFT
--

minetest.register_craft({
	output = 'sxmfarming:bread',
	recipe = {
		{'sxmfarming:wheat', 'sxmfarming:wheat', 'sxmfarming:wheat'},
	}
})