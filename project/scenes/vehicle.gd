extends VehicleBody3D

var accelerator:float = 0 
var horse_power:float = 100000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:	
	accelerator = Input.get_axis("move_forward", "move_back")
	
	engine_force = accelerator * horse_power
	pass


func _on_left_hand_input_float_changed(name: String, value: float) -> void:
	
	if name == "trigger":
		accelerator = value	
	pass # Replace with function body.

func _on_left_hand_button_pressed(name: String) -> void:

	pass # Replace with function body.


func _on_left_hand_input_vector_2_changed(name: String, value: Vector2) -> void:
	if name == "primary":
		steering = remap(value.x, -1, 1, -PI, PI)
	
	
	pass # Replace with function body.
