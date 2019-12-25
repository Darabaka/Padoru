extends Sprite

# Describes the maximum offset that can be applied to the sprite.
# It's increased after each frame (+= 1 unit/s).
var shaking_amplitude: float = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	# Shake!
	self.position.x = rand_range(-self.shaking_amplitude, self.shaking_amplitude)
	self.position.y = rand_range(-self.shaking_amplitude, self.shaking_amplitude)
	# += 1 unit/s
	self.shaking_amplitude += delta
	
	# Add red tint.
	self.modulate.r += delta / 5
