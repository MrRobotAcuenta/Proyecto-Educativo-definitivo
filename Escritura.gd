extends CanvasLayer
var x = 0
var y = 0
var resultado 
var respuesta 
signal botonSiguiente1
signal botonSiguiente2
signal botonSiguiente3
signal botonSiguiente4
signal botonSiguiente5 
signal botonSiguiente6
signal botonSiguiente7
signal botonSiguiente8
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func listaEjercicios():
	operacion1()
	print("vamos")
	
	

func mostrarMensaje(texto):
	$operacion.text = texto
	$operacion.show()
	

func operacion1():
	
	x = 432
	y = 32
	resultado = x * y 
	mostrarMensaje(str(x) + " * " + str(y))


func operacion2():
	x = 422
	y = 12
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))
	
func operacion3():
	x = 720
	y = 42
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))

func operacion4():
	x = 357
	y = 22
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))
	
func operacion5():
	x = 615
	y = 55
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))
func operacion6():
	x = 60
	y = 44
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))
func operacion7():
	x = 863
	y = 38
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))
func operacion8():
	x = 289
	y = 96
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))
func operacion9():
	x = 783
	y = 67
	resultado = x * y
	mostrarMensaje(str(x) + " * " + str(y))

func _on_ButtonDesafio_pressed():
	listaEjercicios()




func _on_EscrituraRespuesta_respuesta(num):
	respuesta = num
	if compararResultado(respuesta,resultado):
		if resultado == 13824 :
			emit_signal("botonSiguiente1")
		if resultado == 5064 :
			emit_signal("botonSiguiente2")
		if resultado == 30240 :
			emit_signal("botonSiguiente3")
		if resultado == 7854 :
			emit_signal("botonSiguiente4")
		if resultado == 33825 :
			emit_signal("botonSiguiente5")
		if resultado == 2640 :
			emit_signal("botonSiguiente6")
		if resultado == 32794 :
			emit_signal("botonSiguiente7")
		if resultado == 27744 :
			emit_signal("botonSiguiente8")
		if resultado == 52461 :
			emit_signal("botonSiguiente9")
	
	
	

func compararResultado(val1,val2):
	print("respuesta " + str(val1))
	print("resultado " + str(val2))
	if respuesta == resultado:
		print("bien")
		#emit_signal("botonSiguiente")
		return true
	else:
		print("mal")
		return false

	


func _on_siguiente_pressed():
	operacion2()
func _on_siguienteE3_pressed():
	operacion3()
func _on_siguienteE4_pressed():
	operacion4()
func _on_siguienteE5_pressed():
	operacion5()
func _on_siguienteE6_pressed():
	operacion6()
func _on_siguienteE7_pressed():
	operacion7()
func _on_siguienteE8_pressed():
	operacion8()
func _on_siguienteE9_pressed():
	operacion9()
