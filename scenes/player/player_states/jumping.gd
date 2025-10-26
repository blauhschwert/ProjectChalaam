extends PlayerState


func enter(_previous_state_path: String, _data := {}) -> void:
	player.velocity.y = -JUMP_SPEED
	%JumpSoundShort.play()


func physics_update(_delta: float) -> void:
	player.velocity.y += GRAVITY * _delta
	player.move_and_slide()
	
	if player.is_on_floor():
		finished.emit(IDLE)
