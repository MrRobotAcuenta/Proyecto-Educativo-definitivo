extends Button

var respuesta = get.node("res://Ejercicio.gd").respuesta

func _ready():
	pass 


func _on_Button_pressed():
	respuesta = (respuesta * 10) + digito
	print (respuesta)
