extends Node2D

var dragging = false
var of = Vector2(0,0)

var cnct = null

func _process(_delta):
	if dragging:
		position = get_global_mouse_position() - of
	else:
		if cnct != null:
			position = cnct
			cnct = null

func _on_button_button_down():
	dragging =  true
	of = get_global_mouse_position() - global_position


func _on_button_button_up():
	dragging = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	if dragging:
		cnct = area.get_parent().position
		cnct += area.position*2
