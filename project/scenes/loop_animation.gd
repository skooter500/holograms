extends AnimationPlayer

var forwards:bool = true

func _on_animation_finished(anim_name: StringName) -> void:
	if forwards:
		play_backwards()
	else:
		play()
	forwards = ! forwards
	pass # Replace with function body.
