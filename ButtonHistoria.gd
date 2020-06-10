extends Button

func _ready():
	show()
	
func _on_ButtonHistoria_pressed():
	get_tree().change_scene("res://Mundo_inicial.tscn")


func _on_ButtonDesafio_pressed():
	hide()
