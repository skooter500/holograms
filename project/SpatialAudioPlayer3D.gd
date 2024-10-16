class_name SpatialAudioPlayer3D extends AudioStreamPlayer3D

func _ready() -> void:
	connect("finished", Callable(self,"_on_loop_sound").bind(self))
	play()

func _on_loop_sound(player):
	player.stream_paused = false
	player.play()
