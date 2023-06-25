extends Node

var warriorPreload = preload("res://03_Prefabs/WarriorTroop.tscn")
var barbarianPreload = preload("res://03_Prefabs/BarbarianTroop.tscn")
var archerPreload = preload("res://03_Prefabs/ArcherTroop.tscn")
var magePreload = preload("res://03_Prefabs/MageTroop.tscn")

func _ready():
	SpawnAllTroops()
	pass

func SpawnAllTroops():
	SpawnWarrior()
	SpawnBarbarian()
	SpawnArcher()
	SpawnMage()
	pass

func TroopRefil():
	
	pass

func SpawnWarrior():
	var warrior = warriorPreload.instance()
	add_child(warrior)
	warrior.position = Vector2(272,158)
	pass

func SpawnBarbarian():
	var warrior = barbarianPreload.instance()
	add_child(warrior)
	warrior.position = Vector2(272,198)
	pass

func SpawnArcher():
	var warrior = archerPreload.instance()
	add_child(warrior)
	warrior.position = Vector2(272,238)
	pass

func SpawnMage():
	var warrior = magePreload.instance()
	add_child(warrior)
	warrior.position = Vector2(272,278)
	pass
