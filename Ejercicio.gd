extends Node

var digito = 0;
var numero1 = randi() % 50 + 1
var numero2 = randi() % 50 + 1
var respuestaCorrecta = numero1*numero2
onready var problema = $Problema
onready var respuesta = $Respuesta

func _ready():
	problema.set_text("¿Cuanto es " + str(numero1) + "x"+ str(numero2)+"?")

func _on_Borrar_pressed():
	respuesta.set_text("")
	digito = 0;


func _on_Listo_pressed():
	if (digito == respuestaCorrecta):
		respuesta.set_text("¡bien!")
	else:
		respuesta.set_text("mal :c")


func _on_0_pressed():
	respuesta.set_text(respuesta.get_text() + "0")
	digito = digito*10

func _on_3_pressed():
	respuesta.set_text(respuesta.get_text() + "3")
	digito = (digito*10) + 3

func _on_1_pressed():
	respuesta.set_text(respuesta.get_text() + "1")
	digito = (digito*10) + 1

func _on_2_pressed():
	respuesta.set_text(respuesta.get_text() + "2")
	digito = (digito*10) + 2

func _on_4_pressed():
	respuesta.set_text(respuesta.get_text() + "4")
	digito = (digito*10) + 4

func _on_5_pressed():
	respuesta.set_text(respuesta.get_text() + "5")
	digito = (digito*10) + 5

func _on_6_pressed():
	respuesta.set_text(respuesta.get_text() + "6")
	digito = (digito*10) + 6

func _on_7_pressed():
	respuesta.set_text(respuesta.get_text() + "7")
	digito = (digito*10) + 7

func _on_8_pressed():
	respuesta.set_text(respuesta.get_text() + "8")
	digito = (digito*10) + 8

func _on_9_pressed():
	respuesta.set_text(respuesta.get_text() + "9")
	digito = (digito*10) + 9
