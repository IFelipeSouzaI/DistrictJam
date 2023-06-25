class_name TroopStats

var Hp = 0
var Attack = 0
var Defense = 0
var AttackSpeed = 0
var TroopType

var Shield = 0

func _init(var newHp, var newAttack, var newDef, var newAttackSpeed, var newTroopType):
	Hp = newHp
	Attack = newAttack
	Defense = newDef
	AttackSpeed = newAttackSpeed
	TroopType = newTroopType
	pass

func TakeDamage(var value):
	var finalDamage = value - Defense
	if(Shield > finalDamage):
		Shield -= finalDamage
	elif(Shield > 0):
		finalDamage -= Shield
		Shield = 0
	if(finalDamage > 0):
		Hp -= finalDamage
	else:
		print("Dano foi negativo, reavalia essa poha ai")
	pass
