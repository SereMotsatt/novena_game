local tex_stone = "default_stone.png"
local tex_m_base = "^(default_mineral_base.png^"
local tex_s_coal = {tex_stone..tex_m_base.."[hsl:0:0:-75)"}
local tex_s_iron = {tex_stone..tex_m_base.."[colorize:#EEEEAA:255)"}
local tex_s_copper = {tex_stone..tex_m_base.."[colorize:#EFAA66:255)"}
local tex_s_mesite = {tex_stone..tex_m_base.."[colorize:#EFAA88:255)"}
local tex_s_gold = {tex_stone..tex_m_base.."[colorize:#FFD733:255)"}

--
-- Iron
--

dft.register_node("default:stone_with_iron", {
	description = "Stone with iron",
	tiles = tex_s_iron,
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

dft.register_craftitem("default:iron_lump", {
	description = "Lump of iron",
	inventory_image = "default_iron_lump.png",
})

minetest.register_craft({
	type = "cooking",
	output = "default:steel_ingot",
	recipe = "default:iron_lump",
})

--
-- Copper
--

dft.register_node("default:stone_with_copper", {
	description = "Stone with copper",
	tiles = tex_s_copper,
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:copper_lump',
	sounds = default.node_sound_stone_defaults(),
})

dft.register_craftitem("default:copper_lump", {
	description = "Lump of copper",
	inventory_image = "default_copper_lump.png",
})

minetest.register_craft({
	type = "cooking",
	output = "default:copper_ingot",
	recipe = "default:copper_lump",
})

--
-- Mesite
--

dft.register_node("default:stone_with_mesite", {
	description = "Stone with mesite",
	tiles = tex_s_mesite,
	is_ground_content = true,
	groups = {cracky=2},
	paramtype = "light",
	light_source = 2,
	drop = 'default:mesite_lump',
	sounds = default.node_sound_stone_defaults(),
})

dft.register_craftitem("default:mesite_lump", {
	description = "Lump of mesite",
	inventory_image = "default_mesite_lump.png",
})

minetest.register_craft({
	type = "cooking",
	output = "default:mesite_ingot",
	recipe = "default:mesite_lump",
})

--
-- Gold
--

dft.register_node("default:stone_with_gold", {
	description = "Stone with gold",
	tiles = tex_s_gold,
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:gold_lump',
	sounds = default.node_sound_stone_defaults(),
})

dft.register_craftitem("default:gold_lump", {
	description = "Lump of gold",
	inventory_image = "default_gold_lump.png",
})

minetest.register_craft({
	type = "cooking",
	output = "default:gold_ingot",
	recipe = "default:gold_lump",
})