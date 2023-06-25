extends Node2D

export var Hp = 0
export var Attack = 0
export var Defense = 0
export var AttackSpeed = 0
export var TroopType = GameRef.TroopType.WARRIOR

var troopStats

var attackTimer = 0

onready var hpBar = get_node("TroopBar")

func _ready():
	troopStats = TroopStats.new(Hp, Attack, Defense, AttackSpeed, TroopType)
	hpBar.InitBar(troopStats.Hp)
	hpBar.visible = false
	pass 

func _process(delta):
	attackTimer += delta
	if(attackTimer > troopStats.AttackSpeed):
		EventSystem.emit_signal("OnApplyDamageToEnemies", troopStats.Attack)
		attackTimer = 0
	pass

func ShowUIInfo():
	hpBar.visible = true
	pass

func SetNewGridPos(var newPos):
	position = newPos
	EventSystem.emit_signal("OnTroopsOnGridUpdate", troopStats.TroopType, position)
	pass

func ApplyAttackSpeedBuff(var value):
	troopStats.AttackSpeed /= value
	pass

func ApplyAttackBuff(var value):
	troopStats.Attack *= value
	pass

func TakeDamage(var value):
	troopStats.TakeDamage(value)
	print(troopStats.Hp)
	hpBar.UpdateBar(troopStats.Hp)
	pass

func Destroy():
	EventSystem.emit_signal("OnTroopRemovedFromGrid")
	queue_free()
	pass
