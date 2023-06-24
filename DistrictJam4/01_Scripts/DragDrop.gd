extends Node2D

var selected = false
var distance = 40
var startY = 158
var startX = 40
var endX = 200
var endY = 318

func _ready():
	pass

func _process(delta):
	if selected:
		followMouse()
	pass

func followMouse():
	get_parent().position = get_global_mouse_position()
	for x in range(startX,endX,40):
		for y in range(startY,endY,40):
			if get_parent().position.distance_to(Vector2(x,y)) < distance:
				get_parent().position = Vector2(x,y)
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
