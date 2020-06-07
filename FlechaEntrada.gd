extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonHistoria_pressed():
	show()


func _on_FlechaEntrada_area_entered(area):
	position=Vector2(10000,100000)
	hide()
	return area
