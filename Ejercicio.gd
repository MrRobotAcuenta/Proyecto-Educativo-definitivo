extends Node

var digito = 0;

onready var respuesta = $Respuesta

func _on_Borrar_pressed():
	respuesta.set_text("")


func _on_Listo_pressed():
	pass # Replace with function body.


func _on_0_pressed():
	respuesta.set_text(respuesta.get_text() + "0")

func _on_3_pressed():
	respuesta.set_text(respuesta.get_text() + "3")


func _on_1_pressed():
	respuesta.set_text(respuesta.get_text() + "1")


func _on_2_pressed():
	respuesta.set_text(respuesta.get_text() + "2")


func _on_4_pressed():
	respuesta.set_text(respuesta.get_text() + "4")


func _on_5_pressed():
	respuesta.set_text(respuesta.get_text() + "5")


func _on_6_pressed():
	respuesta.set_text(respuesta.get_text() + "6")


func _on_7_pressed():
	respuesta.set_text(respuesta.get_text() + "7")


func _on_8_pressed():
	respuesta.set_text(respuesta.get_text() + "8")


func _on_9_pressed():
	respuesta.set_text(respuesta.get_text() + "9")
