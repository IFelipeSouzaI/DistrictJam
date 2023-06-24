extends Node2D

export var Hp = 0
export var Attack = 0
export var Defense = 0
export var AttackSpeed = 0
export var TroopTipe = 0
var troopStats

var attackTimer = 0

func _ready():
	troopStats = TroopStats.new(Hp, Attack, Defense, AttackSpeed, TroopTipe)
	pass 

func _process(delta):
	attackTimer += delta
	if(attackTimer > troopStats.AttackSpeed):
		EventSystem.emit_signal("ApplyDamageToEnemy", troopStats.Attack)
		attackTimer = 0
	pass

func ApplyAttackSpeedBuff(var value):
	troopStats.AttackSpeed /= value
	pass

func ApplyAttackBuff(var value):
	troopStats.Attack *= value
	pass
