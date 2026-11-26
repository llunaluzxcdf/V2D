extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_action_pressed("der"):
		offset.x = offset.x - 2
	if Input.is_action_pressed("izq"):
		offset.x = offset.x + 2
	if Input.is_action_pressed("arriba"):
		offset.y = offset.y - 2
	if Input.is_action_pressed("abajo"):
		offset.y = offset.y + 2
