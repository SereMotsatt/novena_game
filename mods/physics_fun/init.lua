

core.register_on_joinplayer(function(player)
	player:set_physics_override({
		jump = 1.4,
		gravity = 1.6,
		liquid_sink = 2.5,
		liquid_fluidity_smooth = 2.0,	
	})
end)

print("[PHYSICS_FUN] has been loaded.")