extends Node3D

@export var block_scene:PackedScene

@export var radius:float = 4
@export var height:float = 10
@export var elements = 40
@export var block_size = 0.1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	var theta = (PI * 2) / elements 
	for j in range(height):		
		for i in range(elements):		
			var t = theta * i
			
			if (j % 2) == 0:
				t += (theta * 0.5)
			
			var x = sin(t) * radius
			var z = cos(t) * radius
			var brick = block_scene.instantiate()
			brick.position = Vector3(x, j * block_size, z)
			brick.rotation = Vector3(0, t, 0)
			add_child(brick)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
