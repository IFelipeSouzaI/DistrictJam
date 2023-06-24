extends Node2D

var selected = false
var distance = 20
var startY = 158
var startX = 48
var endX = 208
var endY = 318

var isPlaced = false
var startPosition = Vector2.ZERO

func _ready():
	startPosition = get_parent().position
	pass

func _process(delta):
	if selected:
		followMouse()
	elif isPlaced == false:
		setOnGrid()
	pass

func followMouse():
	get_parent().position = get_global_mouse_position()
	isPlaced = false
	pass

func setOnGrid():
	for x in range(startX,endX+40,40):
		for y in range(startY,endY+40,40):
			if get_parent().position.distance_to(Vector2(x,y)) < distance:
				get_parent().position = Vector2(x,y)
				startPosition = Vector2(x,y)
				isPlaced = true
	if isPlaced == false:
		get_parent().position = startPosition
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
