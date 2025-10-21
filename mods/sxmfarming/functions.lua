
--
-- ABM Helper
--

function sxmfarming.check_water_in_radius(radius, actualpos)
	for x1 = -radius, radius do 
			for z1 = -radius, radius do 
				local above = {x=actualpos.x+x1, y=actualpos.y, z=actualpos.z+z1}
				local name = minetest.get_node(above).name
				if name == sxmfarming.water or name == sxmfarming.water_flowing then
					return true
				end
		end
	end
	return false
end

function sxmfarming.farming_abm_node_from_to(name1, name2)

	minetest.register_abm({
		interval = 25.0,
		chance = 2,
		nodenames = {name1},
		action = function(pos, node)
			minetest.set_node(pos, minetest.registered_nodes[name2])
		end,
	})

end


--
-- FARMING Helpers
--

local function hoe_place(itemstack, user, pointed_thing)
	if pointed_thing.type ~= 'node' then return itemstack end
	local pt_pos = pointed_thing.under
	local pt_name = minetest.get_node(pt_pos).name
	if pt_name == 'default:dirt' or pt_name == 'default:dirt_with_grass' then
		minetest.set_node(pt_pos, minetest.registered_nodes['sxmfarming:dry_farmland'])
	end
	return itemstack
end

function sxmfarming.seed_place(itemstack, user, pointed_thing, node_to_place)
	if pointed_thing.type ~= 'node' then return itemstack end
	local pt_pos = pointed_thing.under
	local pt_name = minetest.get_node(pt_pos).name
	pt_pos.y = pt_pos.y + 1
	if pt_name == 'sxmfarming:dry_farmland' or pt_name == 'sxmfarming:wet_farmland' then
		minetest.set_node(pt_pos, minetest.registered_nodes[node_to_place])
		itemstack:take_item()
	end
	return itemstack
end

function sxmfarming.register_hoe(subname, name, hsl, uses, add_image)
	if add_image == nil then add_image = '' else add_image = '^[mask:'..add_image end
	minetest.register_tool("sxmfarming:hoe_"..subname, {
		description = name .. " hoe",
		inventory_image = "default_tool_base.png^(sxmfarming_tool_hoe_base.png^[hsl"..hsl..add_image..")",
		tool_capabilities = {
			max_drop_level=0,
		},
		on_place = function(itemstack, user, pointed_thing)
			return hoe_place(itemstack, user, pointed_thing)
		end,
	})
end