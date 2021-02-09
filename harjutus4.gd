extends Node
#Kristjan Lebedev
#02.02.2021
#Ülesanne4.1


func _ready():
	var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	var size = players.size()
	print(size)
	print(players[0])
	players.sort()
	players.erase("Reyes")
	players.append("Kristjan")
	var biggest = players.max()
	print(biggest)
	print("Kogu array sisu:")
	for i in players:
	 print(i)
	#Ülesanne4.2
	print("Harjutus4.2")
	var player = {"posx":38, "posy":16, "items":["sword", "bow"], "gold":100}
	while player.gold <= 495:
		player.gold += 5
	print(player.gold)

