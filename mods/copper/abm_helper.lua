
function register_oxidation(node, next_node)

	minetest.register_abm({
		nodenames = {node},
		interval = 3.0,
		chance = 1,
		action = function(pos, node)
			local new_node = next_node
			local current_param2 = node.param2
			local new_node_data = {
				name = new_node,
				param2 = current_param2
			}
			minetest.set_node(pos, new_node_data)
		end
	})

end
