extends Node2D

var mouseOver : bool
var mousePos : Vector2 = Vector2.ZERO	
var difference : Vector2

func _on_area_2d_mouse_entered() -> void:
	mouseOver = true


func _on_area_2d_mouse_exited() -> void:
	mouseOver = false
	

func _ready() -> void:
	pass # Replace with function body.


func _process(_delta: float) -> void: #recordar quitar la barrabaja a delta si la vamos a usar
	difference = mousePos - get_global_mouse_position()
	
	if Input.is_action_pressed("Click") and mouseOver and difference != Vector2.ZERO:
		global_position -= difference
		
	mousePos = get_global_mouse_position()
	
	if Input.is_action_pressed("ClickIzq") and mouseOver:
		$Sprite2D.play("PruebaCarta")
