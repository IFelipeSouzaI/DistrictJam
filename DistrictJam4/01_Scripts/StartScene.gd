extends Node2D

func _on_LinkedinLucasBnt_pressed():
	OS.shell_open("https://www.linkedin.com/in/lucas-francisco-chacon/")
	pass

func _on_LinkedinFelipeBnt_pressed():
	OS.shell_open("https://www.linkedin.com/in/felipe-souza-2890861a3/")
	pass

func _on_StartBtn_pressed():
	get_tree().change_scene("res://02_Scenes/Root.tscn")
	pass
