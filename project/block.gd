extends Node3D

var size = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var mat = StandardMaterial3D.new()
	mat.albedo_color = Color.from_hsv(randf(), 1, 1)
	# fin_node("")
	find_child("MeshInstance3D").set_surface_override_material(0, mat)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
