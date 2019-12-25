extends Node2D

# This will be added to Nero's scaling after each second.
const GROWTH_RATE: float = 0.2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	var new_scale_offset: float = delta * self.GROWTH_RATE
	self.scale.x += new_scale_offset
	self.scale.y += new_scale_offset