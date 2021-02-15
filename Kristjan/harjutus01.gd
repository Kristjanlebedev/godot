extends Node
#Kristjan Lebedev
#02.02.2021
#Ülesanne1
var random_generator = RandomNumberGenerator.new()
func _ready():
	var name = "John"
	var life = 29
	print("Nime pikkus ",name.length()," märki")
	life+=2
	print("Elude arv %s" % life)
	random_generator.randomize()
	var random_value = random_generator.randi_range(1,19)
	print("suvaline arv: ",random_value)

