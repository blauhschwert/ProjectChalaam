extends PlayerState


func enter(_previous_state_path: String, _data := {}) -> void:
	anim.play("run")
	run_col.disabled = false

func physics_update(_delta: float) -> void:

	if Input.is_action_pressed("jump"):
		finished.emit(JUMPING)
	elif Input.is_action_just_pressed("duck"):
		finished.emit(DUCK)
