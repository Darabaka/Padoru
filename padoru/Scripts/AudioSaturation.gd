extends AudioStreamPlayer

# The volume will be increased by this number each second.
const SATURATION_RATE: float = 3.5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	self.volume_db += self.SATURATION_RATE * delta
