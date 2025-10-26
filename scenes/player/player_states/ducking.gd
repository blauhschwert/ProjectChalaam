extends PlayerState


func enter(_previous_state_path: String, _data := {}) -> void:
	anim.play("duck")
	run_col.disabled = true

func physics_update(_delta: float) -> void:

	if Input.is_action_just_released("duck"):
		finished.emit(IDLE)
