extends Node

var warriorPreload = preload("res://03_Prefabs/WarriorTroop.tscn")
var barbarianPreload = preload("res://03_Prefabs/BarbarianTroop.tscn")
var archerPreload = preload("res://03_Prefabs/ArcherTroop.tscn")
var magePreload = preload("res://03_Prefabs/MageTroop.tscn")

var yHeight = 12

func _ready():
	SpawnAllTroops()
	EventSystem.connect("OnTroopPlacedOnGrid", self, "TroopRefil")
	EventSystem.connect("OnTroopRemovedFromGrid", self, "TroopRemoved")
	pass

func SpawnAllTroops():
	SpawnWarrior()
	SpawnBarbarian()
	SpawnArcher()
	SpawnMage()
	pass

func TroopRemoved(troopType, onGrid):
	if(!onGrid):
		TroopRefil(troopType)
	pass

func TroopRefil(troopType):
	if (troopType == GameRef.TroopType.ARCHER):
		SpawnArcher()
	elif (troopType == GameRef.TroopType.WARRIOR):
		SpawnWarrior()
	elif (troopType == GameRef.TroopType.BARBARIAN):
		SpawnBarbarian()
	else:
		SpawnMage()
	pass

func SpawnWarrior():
	var warrior = warriorPreload.instance()
	add_child(warrior)
	warrior.position = Vector2(272,158-yHeight)
	pass

func SpawnBarbarian():
	var barbarian = barbarianPreload.instance()
	add_child(barbarian)
	barbarian.position = Vector2(272,198-yHeight)
	pass

func SpawnArcher():
	var archer = archerPreload.instance()
	add_child(archer)
	archer.position = Vector2(272,238-yHeight)
	pass

func SpawnMage():
	var mage = magePreload.instance()
	add_child(mage)
	mage.position = Vector2(272,278-yHeight)
	pass
