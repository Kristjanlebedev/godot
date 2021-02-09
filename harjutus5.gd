extends Node
#Kristjan Lebedev
#09.02.2021
#Ülesanne5 ja 5.2

var tunnid = 40
var tunnitasu = 100
var tulemused = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
var suurus = tulemused.size()
var kokku=0
func _ready():
	print(tasu(tunnid, tunnitasu))
	for i in tulemused:
		if i >= 90:
			print(i,"p 5")
		elif i >= 75 and i <=89:
			print(i,"p 4")
		elif i >= 50 and i <=74:
			print(i,"p 3")
		else:
			print(i,"p 2")
		kokku = kokku + i
	print("Keskmine: ",kokku/suurus)




func tasu(h, ht):
	var tasu
	if h <= 40:
		tasu = h * ht
	else:
		tasu = 40*ht+(h-40)*1.5*h
	return tasu
