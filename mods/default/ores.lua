local tex_stone = "default_stone.png"
local tex_m_base = "^(default_mineral_base.png^"
local tex_s_coal = {tex_stone..tex_m_base.."[hsl:0:0:-75)"}
local tex_s_iron = {tex_stone..tex_m_base.."[colorize:#EEEEAA:255)"}
local tex_s_copper = {tex_stone..tex_m_base.."[colorize:#EFAA66:255)"}
local tex_s_mesite = {tex_stone..tex_m_base.."[colorize:#EFAA88:255)"}

--
-- Iron
--

minetest.register_node("default:stone_with_iron", {
	description = "Stone with iron",
	tiles = tex_s_iron,
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("default:iron_lump", {
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

minetest.register_node("default:stone_with_copper", {
	description = "Stone with copper",
	tiles = tex_s_copper,
	is_ground_content = true,
	groups = {cracky=2},
	--drop = 'default:coper_lump',
	sounds = default.node_sound_stone_defaults(),
})

--minetest.register_craftitem("default:iron_lump", {
--	description = "Lump of iron",
--	inventory_image = "default_iron_lump.png",
--})

minetest.register_craft({
	type = "cooking",
	output = "default:copper_ingot",
	recipe = "default:stone_with_copper",
})

--
-- Mesite
--

minetest.register_node("default:stone_with_mesite", {
	description = "Stone with mesite",
	tiles = tex_s_mesite,
	is_ground_content = true,
	groups = {cracky=2},
	paramtype = "light",
	light_source = 2,
	--drop = 'default:coper_lump',
	sounds = default.node_sound_stone_defaults(),
})

--minetest.register_craftitem("default:iron_lump", {
--	description = "Lump of iron",
--	inventory_image = "default_iron_lump.png",
--})

minetest.register_craft({
	type = "cooking",
	output = "default:mesite_ingot",
	recipe = "default:stone_with_mesite",
})