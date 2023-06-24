extends Node2D

var selected = false
var distance = 40

func _ready():
	pass

func _process(delta):
	if selected:
		followMouse()
	pass

func followMouse():
	get_parent().position = get_global_mouse_position()
	if get_parent().position.distance_to(Vector2(38,282)) < distance:
		get_parent().position = Vector2(38,282)
	if get_parent().position.distance_to(Vector2(85,282)) < distance:
		get_parent().position = Vector2(85,282)
	pass



func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			#mouse down
			selected = true
		else:
			#mouse released
			selected = false
	pass
