--
-- Panes create for SereXmotsatt
--

panes = {}

function panes.register_bars(modname, subname, description, hsl, inputrecipename, groups_alternative)
	modname = modname or 'panes'
	groups_alternative = groups_alternative or {cracky = 2, bars=1}
	local bars_tex = {"default_blockauto_base.png^[hsl"..hsl, "default_blockauto_base.png^[hsl"..hsl,"panes_metal_bars_side.png^[hsl"..hsl}
	minetest.register_node(modname..":bars_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = bars_tex,
		inventory_image = "panes_metal_bars_side.png^[hsl"..hsl,
		wield_image = "panes_metal_bars_side.png^[hsl"..hsl,
		use_texture_alpha = 'clip',
		paramtype = "light",
		is_ground_content = true,
		groups = groups_alternative,
		node_box = {
			type = "connected",
			disconnected_sides = {
				{-1/16, -1/2, -1/16, 1/16, 1/2, 1/16},
			},
			connect_left = {{-1/2, -1/2, -1/16, 0, 1/2, 1/16}},
			connect_right = {{0, -1/2, -1/16, 1/2, 1/2, 1/16}},
			connect_back = {{-1/16, -1/2, 0, 1/16, 1/2, 1/2}},
			connect_front = {{-1/16, -1/2, -1/2, 1/16, 1/2, 0}},
		},
		connects_to = {'group:bars', 'group:cracky', 'group:choppy'},
	})
	if inputrecipename ~= nil then
		minetest.register_craft({
			output = modname..":bars_"..subname,
			recipe = {
				{inputrecipename, inputrecipename},
				{inputrecipename, inputrecipename},
			}
		})
	end
	
end

function panes.register_pane(subname, description, hsl, inputrecipename, groups_alternative)
	groups_alternative = groups_alternative or {snappy=2,cracky=3,oddly_breakable_by_hand=3, pane=1}
	local pane_tex = {"default_blockauto_base.png^[hsl"..hsl, "default_blockauto_base.png^[hsl"..hsl,"default_glass.png^[hsl"..hsl}
	minetest.register_node("panes:pane_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = pane_tex,
		inventory_image = "default_glass.png^[hsl"..hsl,
		wield_image = "default_glass.png^[hsl"..hsl,
		use_texture_alpha = 'clip',
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups_alternative,
		node_box = {
			type = "connected",
			disconnected_sides = {
				{-1/16, -1/2, -1/16, 1/16, 1/2, 1/16},
			},
			connect_left = {{-1/2, -1/2, -1/16, 0, 1/2, 1/16}},
			connect_right = {{0, -1/2, -1/16, 1/2, 1/2, 1/16}},
			connect_back = {{-1/16, -1/2, 0, 1/16, 1/2, 1/2}},
			connect_front = {{-1/16, -1/2, -1/2, 1/16, 1/2, 0}},
		},
		connects_to = {'group:pane', 'group:cracky', 'group:choppy'},
	})
	if inputrecipename ~= nil then
		minetest.register_craft({
			output = "panes:pane_"..subname.." 8",
			recipe = {
				{inputrecipename, inputrecipename},
				{inputrecipename, inputrecipename},
			}
		})
	end
end

panes.register_bars(nil, 'copper', 'Copper bars', ccoppert, 'default:copper_ingot')
panes.register_bars(nil, 'steel', 'Steel bars', csteelt, 'default:steel_ingot')

panes.register_pane('glass', 'Glass pane', ':0:0:0', 'default:glass')