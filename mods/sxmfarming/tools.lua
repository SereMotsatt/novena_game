
local function hoe_place(itemstack, user, pointed_thing)
	if pointed_thing.type ~= 'node' then return itemstack end
	local pt_pos = pointed_thing.under
	local pt_name = minetest.get_node(pt_pos).name
	if pt_name == 'default:dirt' or pt_name == 'default:dirt_with_grass' then
		minetest.set_node(pt_pos, minetest.registered_nodes['sxmfarming:dry_farmland'])
	end
	return itemstack
end

function sxmfarming.register_hoe(subname, name, hsl, uses)
	minetest.register_tool("sxmfarming:hoe_"..subname, {
		description = name .. " hoe",
		inventory_image = "default_tool_base.png^(sxmfarming_tool_hoe_base.png^[hsl"..hsl..")",
		tool_capabilities = {
			max_drop_level=0,
		},
		on_place = function(itemstack, user, pointed_thing)
			return hoe_place(itemstack, user, pointed_thing)
		end,
	})
end