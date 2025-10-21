-- Auto

materials = {}
tools = {}
crafttools = {}
fences = {}

default.blockauto = 'default_blockauto_base.png'
default.blockauto_side = 'default_blockauto_base_side_slab.png'
default.damascus_pattern = 'default_damascus_pattrn.png'
default.mask_damascus_pattern = '^[mask:default_damascus_pattrn.png'

uploadfile("functions_automated")


-- Colors for tools (Auto)
-- Color_Material_Texture
-- HSL
cwoodt = ":-160:-50:-70"
cstonet = ":0:-100:-50"
csteelt = ":0:-100:0"
ccoppert = ":-160:-50:-40"
cmesitet = ":-150:-10:0"

damasco_b_t = '[mask:default_damascus_pattrn.png^[hsl:0:0:25'
damasco_t = 'default_damascus_pattrn.png^[hsl:0:0:25'

--
-- Register Materials
--

materials.register_material(nil, "steel", "Steel", csteelt)
materials.register_material(nil, "copper", "Copper", ccoppert)
materials.register_material(nil, "damascus_steel", "Damascus Steel", csteelt, damasco_b_t)
materials.register_material(nil, "mesite", "Mesite", cmesitet, nil, 8)

--
-- Register Tools
--

tools.register_tools("wood", "Wooden", cwoodt, 1.40, 5)
tools.register_tools("stone", "Stone", cstonet, 1.00, 15)
tools.register_tools("steel", "Steel", csteelt, 0.60, 20)
tools.register_tools("copper", "Copper", ccoppert, 0.80, 10)
tools.register_tools("damascus_steel", "Damascus Steel", csteelt, 0.55, 40, damasco_t)
tools.register_tools("mesite", "Mesite", cmesitet, 0.45, 35)

--
-- Register Crafts Of Tools
--

crafttools.register_crafttools("wood", false)
crafttools.register_crafttools("stone", false, "cobble")
crafttools.register_crafttools("steel")
crafttools.register_crafttools("copper")
crafttools.register_crafttools("damascus_steel")
crafttools.register_crafttools("mesite")