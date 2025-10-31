--
-- sxm Farming, SereXmotsatt
--

sxmfarming = {}
sxmfarming.water = 'default:water_source'
sxmfarming.water_flowing = 'default:water_flowing'

uploadfile('functions')
local ll = LA('sxmfarming')

--
-- REGISTER WHEAT ITEM
--

minetest.register_craftitem("sxmfarming:wheat", {
	description = ll("Wheat"),
	inventory_image = "sxmfarming_wheat.png",
})

minetest.register_craftitem("sxmfarming:wheat_seed", {
	description = ll("Wheat seed"),
	inventory_image = "sxmfarming_wheat_seed.png",
	on_place = function(itemstack, placer, pointed_thing)
		return sxmfarming.seed_place(itemstack, user, pointed_thing, 'sxmfarming:wheat_1')
	end,
})


--
-- REGISTER FOOD
--

minetest.register_craftitem("sxmfarming:bread", {
	description = ll("Bread"),
	inventory_image = "sxmfarming_bread.png",
	on_use = minetest.item_eat(5),
})


uploadfile('nodes')


--
-- REGISTER HOE
--

sxmfarming.register_hoe('wood', 'Woodden', 'default:wood', cwoodt, 10)
sxmfarming.register_hoe('stone', 'Stone', 'default:cobble', cstonet, 20)
sxmfarming.register_hoe('steel', 'Steel', 'default:steel_ingot', csteelt, 30)
sxmfarming.register_hoe('copper', 'Copper', 'default:copper__ingot', ccoppert, 25)
sxmfarming.register_hoe('gold', 'Gold', 'default:gold_ingot', cgoldt, 20)
sxmfarming.register_hoe('damascus_steel', 'Damascus steel', 'default:damascus_steel_ingot', csteelt..'^'..damasco_b_t, 70)
sxmfarming.register_hoe('mesite', 'Mesite', 'default:mesite_ingot', cmesitet, 60)

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