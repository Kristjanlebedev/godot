extends Node
#Kristjan Lebedev
#02.02.2021
#Ülesanne3
var random_generator = RandomNumberGenerator.new()
func _ready():
	var lifep1 = 100
	var lifep2 = 100
	
	while lifep1 > 0 and lifep2 > 0:
		random_generator.randomize()
		var lookp1 = random_generator.randi_range(8,15)
		var lookp2 = random_generator.randi_range(6,13)
		lifep1 -= lookp2
		print("P2 löök: ",lookp2," P1 elud: ",lifep1)
		lifep2 -= lookp1
		print("P1 löök: ",lookp1," P2 elud: ",lifep2)
	if lifep1 <= 0:
		print ("Mängija 2 võitis")
	elif lifep2 <= 0:
		print ("Mängija 1 võitis")
	else:
		print ("viik")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
