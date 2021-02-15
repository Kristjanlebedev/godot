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
	$Taust/Kuulid.text = "Kuulid: %d" % ammo


func _process(delta):
	if vhp > 0:
		if Input.is_action_just_pressed("shoot"):
			if ammo > 0:
				shoot()
			else:
				print("Kuulid otsas")
				$Taust/Tegevus.text = "Kuulid otsas peame laadima"
		elif Input.is_action_just_pressed("reload"):
			reload()
	else:
		var accu =  pihtas*100/tulis
		print("Mäng läbi. Lastud kuulid: ",tulis," Täpsus: ",accu,"%")
		print("Skoor: ",score)
		$Taust/Paigal.text = "Mäng Läbi"
		get_tree().paused = true



func shoot():
	random_generator.randomize()
	var dm = random_generator.randi_range(8,12)
	print("piuh piuh")
	
	ammo -= 1
	tulis += 1
	print("kuulid alles: ",ammo)
	$Taust/Kuulid.text = "Kuulid: "+str(ammo)
	if bool(randi() % 2):
		print("pihtas: -",dm)
		$Taust/Tegevus.text = "piuh piuh(pihtas) -"+str(dm)
		vhp = vhp - dm
		pihtas += 1
		score += dm
		$Taust/Score.text = "Scoor: "+str(score)
	else:
		print("Möödas")
		$Taust/Tegevus.text = "piuh piuh(Möödas)"
	print("vaenlase elud: ",vhp)
	$Taust/Elud.text = "ELUD: "+str(vhp)




func reload():
	if ammo > 0:
		print("Lase veel sul on ",ammo," kuuli")
		$Taust/Tegevus.text = "Lase veel sul on "+str(ammo)+" kuuli alles"
	else:
		print("laen")
		ammo = ammo + 5
		$Taust/Kuulid.text = "Kuulid: "+str(ammo)
		$Taust/Tegevus.text = "Laen"
