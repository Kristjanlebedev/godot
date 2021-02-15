extends Node
#Kristjan Lebedev
#02.02.2021
#Ülesanne2
var rand_g = RandomNumberGenerator.new()

func _ready():
	rand_g.randomize()
	var rand_v = rand_g.randi_range(1,50)
	var raha = 23
	var toode = rand_v
	if raha >= toode:
		print("Alles jääb: ",raha-toode)
	elif raha <= toode:
		print("Puudu jääb: ",toode-raha)
