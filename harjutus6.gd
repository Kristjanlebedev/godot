extends Node
#Kristjan Lebedev
#09.02.2021
#Ülesanne6
var vhp = 100
var ammo = 5
var score = 0
var random_generator = RandomNumberGenerator.new()
var tulis = 0
var pihtas = 0
func _ready():
	print("Tere tulemast. (space) tulistamiseks ja (r) laadimiseks")
	print("vaenlase elud: ",vhp)
	print("Kuulid: ",ammo)


func _process(delta):
	if vhp > 0:
		if Input.is_action_just_pressed("shoot"):
			if ammo > 0:
				shoot()
			else:
				print("Kuulid otsas")
		elif Input.is_action_just_pressed("reload"):
			reload()
	else:
		var accu =  pihtas*100/tulis
		print("Mäng läbi. Lastud kuulid: ",tulis," Täpsus: ",accu,"%")
		get_tree().quit()



func shoot():
	random_generator.randomize()
	var dm = random_generator.randi_range(8,12)
	print("piuh piuh")
	ammo -= 1
	tulis += 1
	print("kuulid alles: ",ammo)
	if bool(randi() % 2):
		print("pihtas: -",dm)
		vhp = vhp - dm
		pihtas += 1
	else:
		print("Möödas")
	print("vaenlase elud: ",vhp)




func reload():
	if ammo > 0:
		print("Lase veel sul on: ",ammo," kuuli")
	else:
		print("laen")
		ammo = ammo + 5
