extends AnimationPlayer

func _ready() -> void:
	play("Armature|walking_man|baselayer")


func _on_animation_finished(anim_name: StringName) -> void:
	play("Armature|walking_man|baselayer")

	pass # Replace with function body.
