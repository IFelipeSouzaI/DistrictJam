extends Node2D

var selected = false
var distance = 40
var slotLayer0 = 318
var slotLayer1 = 278
var slotLayer2 = 238
var slotLayer3 = 198
var slotLayer4 = 158

func _ready():
	pass

func _process(delta):
	if selected:
		followMouse()
	pass

func followMouse():
	get_parent().position = get_global_mouse_position()
	if get_parent().position.distance_to(Vector2(48,slotLayer0)) < distance:
		get_parent().position = Vector2(48,slotLayer0)
	if get_parent().position.distance_to(Vector2(88,slotLayer0)) < distance:
		get_parent().position = Vector2(88,slotLayer0)
	if get_parent().position.distance_to(Vector2(128,slotLayer0)) < distance:
		get_parent().position = Vector2(128,slotLayer0)
	if get_parent().position.distance_to(Vector2(168,slotLayer0)) < distance:
		get_parent().position = Vector2(168,slotLayer0)
	if get_parent().position.distance_to(Vector2(208,slotLayer0)) < distance:
		get_parent().position = Vector2(208,slotLayer0)
	
	if get_parent().position.distance_to(Vector2(48,slotLayer1)) < distance:
		get_parent().position = Vector2(48,slotLayer1)
	if get_parent().position.distance_to(Vector2(88,slotLayer1)) < distance:
		get_parent().position = Vector2(88,slotLayer1)
	if get_parent().position.distance_to(Vector2(128,slotLayer1)) < distance:
		get_parent().position = Vector2(128,slotLayer1)
	if get_parent().position.distance_to(Vector2(168,slotLayer1)) < distance:
		get_parent().position = Vector2(168,slotLayer1)
	if get_parent().position.distance_to(Vector2(208,slotLayer1)) < distance:
		get_parent().position = Vector2(208,slotLayer1)
	
	if get_parent().position.distance_to(Vector2(48,slotLayer2)) < distance:
		get_parent().position = Vector2(48,slotLayer2)
	if get_parent().position.distance_to(Vector2(88,slotLayer2)) < distance:
		get_parent().position = Vector2(88,slotLayer2)
	if get_parent().position.distance_to(Vector2(128,slotLayer2)) < distance:
		get_parent().position = Vector2(128,slotLayer2)
	if get_parent().position.distance_to(Vector2(168,slotLayer2)) < distance:
		get_parent().position = Vector2(168,slotLayer2)
	if get_parent().position.distance_to(Vector2(208,slotLayer2)) < distance:
		get_parent().position = Vector2(208,slotLayer2)
	
	if get_parent().position.distance_to(Vector2(48,slotLayer3)) < distance:
		get_parent().position = Vector2(48,slotLayer3)
	if get_parent().position.distance_to(Vector2(88,slotLayer3)) < distance:
		get_parent().position = Vector2(88,slotLayer3)
	if get_parent().position.distance_to(Vector2(128,slotLayer3)) < distance:
		get_parent().position = Vector2(128,slotLayer3)
	if get_parent().position.distance_to(Vector2(168,slotLayer3)) < distance:
		get_parent().position = Vector2(168,slotLayer3)
	if get_parent().position.distance_to(Vector2(208,slotLayer3)) < distance:
		get_parent().position = Vector2(208,slotLayer3)
	
	if get_parent().position.distance_to(Vector2(48,slotLayer4)) < distance:
		get_parent().position = Vector2(48,slotLayer4)
	if get_parent().position.distance_to(Vector2(88,slotLayer4)) < distance:
		get_parent().position = Vector2(88,slotLayer4)
	if get_parent().position.distance_to(Vector2(128,slotLayer4)) < distance:
		get_parent().position = Vector2(128,slotLayer4)
	if get_parent().position.distance_to(Vector2(168,slotLayer4)) < distance:
		get_parent().position = Vector2(168,slotLayer4)
	if get_parent().position.distance_to(Vector2(208,slotLayer4)) < distance:
		get_parent().position = Vector2(208,slotLayer4)
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
