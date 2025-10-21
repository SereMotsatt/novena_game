
-- Damascus Steel

minetest.register_craft({
	output = "default:sheet_steel 3",
	recipe = {
		{"","",""},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "default:damascus_steel_ingot",
	recipe = "default:sheet_steel",
})