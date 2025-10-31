function materials.register_material(modname, subname, description, hsl, add_image, lightsource, only_block)
	
	modname = modname or 'default'
	
	paramtype_light = "none"
	lightsource = lightsource or 0;
	if lightsource > 0 then paramtype_light = "light" end
	--if add_image == nil then add_image = '' else add_image = '^[mask:'..add_image end
	if add_image == nil then add_image = '' else add_image = '^'..add_image end

	core.register_node(modname..":"..subname.."_block", {
		description = L(description .. " block"),
		tiles = {'default_blockauto_base.png^[hsl'..hsl..add_image},
		is_ground_content = true,
		--groups = {snappy=1,bendy=2},
		paramtype = paramtype_light,
		light_source = lightsource,
		groups = {cracky=2},
		sounds = default.node_sound_stone_defaults(),
	})
	
	if only_block == nil or only_block == false then
		core.register_craftitem(modname..":"..subname.."_ingot", {
			description = L(description .. " ingot"),
			inventory_image = "default_ingot_base.png^[hsl"..hsl..add_image,
		})
		
		
		core.register_craftitem(modname..":"..subname.."_nugget", {
			description = L(description .. " nugget"),
			inventory_image = "default_nugget_base.png^[hsl"..hsl..add_image,
		})
		
		core.register_craft({
			output = modname..":"..subname.."_nugget 9",
			recipe = {
				{modname..":"..subname.."_ingot"},
			}
		})
		
		core.register_craft({
			output = modname..":"..subname.."_ingot 9",
			recipe = {
				{modname..":"..subname.."_block"},
			}
		})
		
		core.register_craft({
			output = modname..":"..subname.."_ingot",
			recipe = {
				{modname..":"..subname.."_nugget", modname..":"..subname.."_nugget", modname..":"..subname.."_nugget"},
				{modname..":"..subname.."_nugget", modname..":"..subname.."_nugget", modname..":"..subname.."_nugget"},
				{modname..":"..subname.."_nugget", modname..":"..subname.."_nugget", modname..":"..subname.."_nugget"},
			}
		})

		core.register_craft({
			output = modname..":"..subname.."_block",
			recipe = {
				{modname..":"..subname.."_ingot", modname..":"..subname.."_ingot", modname..":"..subname.."_ingot"},
				{modname..":"..subname.."_ingot", modname..":"..subname.."_ingot", modname..":"..subname.."_ingot"},
				{modname..":"..subname.."_ingot", modname..":"..subname.."_ingot", modname..":"..subname.."_ingot"},
			}
		})		
	end
end

function tools.register_tools(subname, description, hsl, timest, uses, add_image)
	if add_image == nil then add_image = '' else add_image = '^[mask:'..add_image end
	--Axe
	basetime = timest
	
	time1 = basetime/2.00
	time2 = basetime
	time3 = (basetime/2.00)+0.10 -- Aprox XD
	
	minetest.register_tool("default:axe_" .. subname, {
		description = L(description .. " axe"),
		inventory_image = "default_tool_base.png^(default_tool_axe_base.png^[hsl"..hsl..add_image..")",
		tool_capabilities = {
			max_drop_level=0,
			groupcaps={
				choppy={times={[1]=time1, [2]=time2, [3]=time3}, uses=uses, maxlevel=1},
				fleshy={times={[2]=time2+0.10, [3]=time1+0.10}, uses=uses, maxlevel=1}
			}
		},
	})
	-- Pickaxe
	basetime = (timest - 0.40)*2.00
	
	time1 = basetime/2.00
	time2 = basetime
	time3 = (basetime/2.00)+0.10 -- Aprox XD
	
	minetest.register_tool("default:pick_" .. subname, {
		description = L(description .. " pickaxe"),
		inventory_image = "default_tool_base.png^(default_tool_pick_base.png^[hsl"..hsl..add_image..")",
		tool_capabilities = {
			max_drop_level=0,
			groupcaps={
				cracky={times={[1]=time1, [2]=time2, [3]=time3}, uses=uses, maxlevel=1}
			}
		},
	})
	-- Shovel
	minetest.register_tool("default:shovel_" .. subname, {
		description = L(description .. " shovel"),
		inventory_image = "default_tool_base.png^(default_tool_shovel_base.png^[hsl"..hsl..add_image..")",
		tool_capabilities = {
			max_drop_level=0,
			groupcaps={
				crumbly={times={[1]=time2, [2]=(time1/2.00)+0.30, [3]=time1/2.00}, uses=uses, maxlevel=1}
			}
		},
	})
	--Sword
	basetime = timest
	
	time1 = basetime/2.00
	time2 = basetime
	time3 = (basetime/2.00)+0.10 -- Aprox XD
	
	minetest.register_tool("default:sword_" .. subname, {
		description = L(description .. " sword"),
		inventory_image = "default_tool_sword_base.png^(default_tool_sword_top.png^[hsl"..hsl..add_image..")",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=0,
			groupcaps={
				fleshy={times={[2]=1.10, [3]=0.60}, uses=uses, maxlevel=1},
				snappy={times={[2]=1.00, [3]=0.50}, uses=uses, maxlevel=1},
				--choppy={times={[3]=1.00}, uses=20, maxlevel=0}
				choppy={times={[3]=time2}}
			}
		}
	})
	
	-- Crafter

	minetest.register_craft({
		output = 'default:axe'..subname,
		recipe = {
			{"default:"..subname, "default:"..subname},
			{"default:"..subname, "default:stick"},
			{"", "default:stick"},
		}
	})
end

function crafttools.register_crafttools(subname, is_a_ingot, other_mat)
	other_mat = other_mat or subname
	if is_a_ingot == false and not nil then
		minetest.register_craft({
			output = 'default:pick_'..subname,
			recipe = {
				{'default:'..other_mat, 'default:'..other_mat, 'default:'..other_mat},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
			}
		})

		minetest.register_craft({
			output = 'default:shovel_'..subname,
			recipe = {
				{'default:'..other_mat},
				{'default:stick'},
				{'default:stick'},
			}
		})


		minetest.register_craft({
			output = 'default:axe_'..subname,
			recipe = {
				{'default:'..other_mat, 'default:'..other_mat},
				{'default:'..other_mat, 'default:stick'},
				{'', 'default:stick'},
			}
		})


		minetest.register_craft({
			output = 'default:sword_'..subname,
			recipe = {
				{'default:'..other_mat},
				{'default:'..other_mat},
				{'default:stick'},
			}
		})
	else
		ingotname = other_mat.."_ingot"
		minetest.register_craft({
			output = 'default:pick_'..subname,
			recipe = {
				{'default:'..ingotname, 'default:'..ingotname, 'default:'..ingotname},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
			}
		})

		minetest.register_craft({
			output = 'default:shovel_'..subname,
			recipe = {
				{'default:'..ingotname},
				{'default:stick'},
				{'default:stick'},
			}
		})


		minetest.register_craft({
			output = 'default:axe_'..subname,
			recipe = {
				{'default:'..ingotname, 'default:'..ingotname},
				{'default:'..ingotname, 'default:stick'},
				{'', 'default:stick'},
			}
		})


		minetest.register_craft({
			output = 'default:sword_'..subname,
			recipe = {
				{'default:'..ingotname},
				{'default:'..ingotname},
				{'default:stick'},
			}
		})
	end
end