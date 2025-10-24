
-- fixed = {{-0.5,-0.5,-0.5,0.5,1.5,-0.25},} -- close
-- fixed = {{-0.5,-0.5,-0.5,-0.25,1.5,0.5},} -- open
-- fixed = {{0.25,-0.5,-0.5,0.5,1.5,0.5},} -- open invert

local function check_in_neighbors_door(pos)
	for x1 = -1, 1 do
		for z1 = -1, 1 do
			local above = {x=pos.x+x1, y=pos.y, z=pos.z+z1}
			local nodename = sxmGN(above).name
			if sxmGIG(nodename, 'door') > 0 and sxmGIG(nodename, 'invert') == 0 then
				return true
			end
		end
	end
	return false
end


function sxmdoors.register_door(modname, subname, description, image, trecipe)

	-- Doors NODES
	
	core.register_node(modname..":"..subname, {
		description = description .. " (NODE)",
		drawtype = "mesh",
		tiles = {image},
		sunlight_propagates = true,
		paramtype2 = "facedir",
		mesh = 'sxmdoors_a.obj',
		collision_box = {
			type = 'fixed',
			fixed = {{-0.5,-0.5,-0.5,0.5,1.5,-0.25},}
		},
		selection_box = {
			type = 'fixed',
			fixed = {{-0.5,-0.5,-0.5,0.5,1.5,-0.25},}
		},
		drop = {
			items = {
				{items = {modname..":"..subname.."_item"} },
			}
		},
		groups = {snappy=3,door=1,invert=0},
		--sounds = default.node_sound_leaves_defaults(),
		on_construct = function(pos)
			local invisible_node = core.registered_nodes['sxmdoors:invi_node']
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.set_node(up, invisible_node)
		end,
		on_destruct = function(pos)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
		end,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
			local cRG_alternative = {name = modname..':'..subname..'_open', param2 = node.param2}
			core.set_node(pos, cRG_alternative)
		end,
	})
	
	core.register_node(modname..":"..subname..'_invert', {
		description = description .. " invert (NODE)",
		drawtype = "mesh",
		tiles = {image},
		invert = false,
		sunlight_propagates = true,
		paramtype2 = "facedir",
		mesh = 'sxmdoors_b.obj',
		collision_box = {
			type = 'fixed',
			fixed = {{-0.5,-0.5,-0.5,0.5,1.5,-0.25},}
		},
		selection_box = {
			type = 'fixed',
			fixed = {{-0.5,-0.5,-0.5,0.5,1.5,-0.25},}
		},
		drop = {
			items = {
				{items = {modname..":"..subname.."_item"} },
			}
		},
		groups = {snappy=3,door=1,invert=1},
		--sounds = default.node_sound_leaves_defaults(),
		on_construct = function(pos)
			local invisible_node = core.registered_nodes['sxmdoors:invi_node']
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.set_node(up, invisible_node)
		end,
		on_destruct = function(pos)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
		end,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
			local cRG_alternative = {name = modname..':'..subname..'_open_invert', param2 = node.param2}
			core.set_node(pos, cRG_alternative)
		end,
	})

	core.register_node(modname..":"..subname.."_open", {
		description = description .. " open (NODE)",
		drawtype = "mesh",
		tiles = {image},
		sunlight_propagates = true,
		paramtype2 = "facedir",
		collision_box = {
			type = 'fixed',
			fixed = {{-0.5,-0.5,-0.5,-0.25,1.5,0.5},}
		},
		selection_box = {
			type = 'fixed',
			fixed = {{-0.5,-0.5,-0.5,-0.25,1.5,0.5},}
		},
		drop = {
			items = {
				{items = {modname..":"..subname.."_item"} },
			}
		},
		mesh = 'sxmdoors_ao.obj',
		groups = {snappy=3,door=1,invert=0},
		--sounds = default.node_sound_leaves_defaults(),
		on_construct = function(pos)
			local invisible_node = core.registered_nodes['sxmdoors:invi_node']
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.set_node(up, invisible_node)
			
		end,
		on_destruct = function(pos)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
		end,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
			local cRG_alternative = {name = modname..':'..subname, param2 = node.param2}
			core.set_node(pos, cRG_alternative)
		end,
	})
	
	
	core.register_node(modname..":"..subname.."_open_invert", {
		description = description .. " open inver (NODE)",
		drawtype = "mesh",
		tiles = {image},
		sunlight_propagates = true,
		paramtype2 = "facedir",
		mesh = 'sxmdoors_bo.obj',
		collision_box = {
			type = 'fixed',
			fixed = {{0.25,-0.5,-0.5,0.5,1.5,0.5},}
		},
		selection_box = {
			type = 'fixed',
			fixed = {{0.25,-0.5,-0.5,0.5,1.5,0.5},}
		},
		drop = {
			items = {
				{items = {modname..":"..subname.."_item"} },
			}
		},
		groups = {snappy=3,door=1,invert=1},
		--sounds = default.node_sound_leaves_defaults(),
		on_construct = function(pos)
			local invisible_node = core.registered_nodes['sxmdoors:invi_node']
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.set_node(up, invisible_node)
			
		end,
		on_destruct = function(pos)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
		end,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			local up = {x=pos.x, y=pos.y+1, z=pos.z}
			core.remove_node(up)
			local cRG_alternative = {name = modname..':'..subname..'_invert', param2 = node.param2}
			core.set_node(pos, cRG_alternative)
		end,
	})
	
	
	-- Doors ITEM

	core.register_craftitem(modname..":"..subname.."_item", {
		description = description,
		inventory_image = "default_cloud.png",
		on_place = function(itemstack, placer, pointed_thing)
		
			local pt = pointed_thing
			if pt.type ~= 'node' then return end
			
			local pos = pt.above
			local pos_up = {x=pos.x, y=pos.y+1, z=pos.z}
			local pos_down = {x=pos.x, y=pos.y-1, z=pos.z}
			
			local look_dir = placer:get_look_dir()
			local new_look_dir = core.dir_to_facedir(look_dir)
			local node_to_place = {name = modname..':'..subname, param2 = new_look_dir, }
			if check_in_neighbors_door(pos) then node_to_place = {name = modname..':'..subname..'_invert', param2 = new_look_dir, } end
			
			if core.get_node(pos).name ~= 'air' then return itemstack end
			if core.get_node(pos_up).name ~= 'air' then return itemstack end
			if core.get_node(pos_down).name == 'air' then return itemstack end
			
			core.set_node(pos, node_to_place)
			itemstack:take_item()
			
			return itemstack
		end,
	})
	
	core.register_craft({
	    output = modname..":"..subname.."_item",
		recipe = {
			{trecipe,trecipe},
			{trecipe,trecipe},
			{trecipe,trecipe},
		},
	})
	
end