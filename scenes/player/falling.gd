extends PlayerState


func enter(_previous_state_path: String, _data := {}) -> void:
	pass

func physics_update(_delta: float) -> void:

	
	if player.is_on_floor():
		finished.emit(IDLE)
