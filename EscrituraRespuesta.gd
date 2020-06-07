extends CanvasLayer
signal respuesta(num)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func mostrarMensaje(texto):
	$Respuesta.text = $Respuesta.text + str(texto)
	$Respuesta.show()


func _on_Button0_pressed():
	mostrarMensaje(0)
func _on_Button1_pressed():
	mostrarMensaje(1)
func _on_Button2_pressed():
	mostrarMensaje(2)
func _on_Button3_pressed():
	mostrarMensaje(3)
func _on_Button4_pressed():
	mostrarMensaje(4)
func _on_Button5_pressed():
	mostrarMensaje(5)
func _on_Button6_pressed():
	mostrarMensaje(6)
func _on_Button7_pressed():
	mostrarMensaje(7)
func _on_Button8_pressed():
	mostrarMensaje(8)

func _on_Button9_pressed():
	mostrarMensaje(9)



func _on_enter_pressed():
	emit_signal("respuesta",int($Respuesta.text))
	$Respuesta.text= str(0)
	
	
