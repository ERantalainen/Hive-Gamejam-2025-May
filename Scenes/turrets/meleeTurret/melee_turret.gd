extends Turret

@onready var explosion = $Explosion

func attack():
	if is_instance_valid(current_target):
		$AnimatedSprite2D.play("default")
		for a in $DetectionArea.get_overlapping_areas():
			var collider = a.get_parent()
			if collider.is_in_group("enemy"):
				explosion.play()
				collider.get_damage(damage)
				collider.get_speed(slow_down)
	else:
		try_get_closest_target()
