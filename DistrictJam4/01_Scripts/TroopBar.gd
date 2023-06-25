extends Control

onready var haelth_bar: TextureProgress = get_node("hpBar")

func InitBar(bar_value):
	haelth_bar.max_value = bar_value
	haelth_bar.value = bar_value
	pass

func UpdateBar(value):
	haelth_bar.value = value
	pass
