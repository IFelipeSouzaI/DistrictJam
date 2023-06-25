extends Control


func _ready():
	pass


func _on_StartBattle_pressed():
	pass # Replace with function body.


func _on_Guide_pressed():
	var controlScreen = load("res://03_Prefabs/Guide.tscn").instance()
	get_tree().current_scene.add_child(controlScreen)
