extends Node2D

var selected = false
var distance = 20
var startY = 158
var startX = 48
var endX = 208
var endY = 318

var isPlaced = true
var startPosition = Vector2.ZERO
var trashPosition = Vector2(272,318)
var yHeight = 12

onready var baseTroop = get_parent()

func _process(delta):
	if selected:
		followMouse()
	elif isPlaced == false:
		setOnGrid()
	pass

func followMouse():
	baseTroop.position = get_global_mouse_position()
	isPlaced = false
	pass

func setOnGrid():
	for x in range(startX,endX+40,40):
		for y in range(startY,endY+40,40):
			if (baseTroop.position.distance_to(Vector2(x,y)) < distance):
				baseTroop.SetNewGridPos(Vector2(x,y-yHeight))
				startPosition = Vector2(x,y-yHeight)
				isPlaced = true
				break
	if isPlaced == false:
		if(baseTroop.position.distance_to(trashPosition) < distance):
			baseTroop.Destroy()
		else:
			baseTroop.position = startPosition
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			selected = true
			startPosition = baseTroop.position
		else:
			selected = false
	pass
