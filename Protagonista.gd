extends Area2D

signal abrirEjercicio
export (int) var Velocidad
var Movimiento = Vector2()
var limite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	limite = get_viewport_rect().size

func _process(delta):
	#moviento
	Movimiento = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		Movimiento.x = Movimiento.x + 1
	
	if Input.is_action_pressed("ui_left"):
		Movimiento.x = Movimiento.x - 1
	
	if Input.is_action_pressed("ui_up"):
		Movimiento.y = Movimiento.y - 1
	
	if Input.is_action_pressed("ui_down"):
		Movimiento.y = Movimiento.y + 1
	
	if Movimiento.length() > 0:
		Movimiento = Movimiento.normalized() * Velocidad
		
	position += Movimiento *  delta
	
	if Movimiento.length() > 0:
		Movimiento = Movimiento.normalized() * Velocidad
	
	
	position.x = clamp(position.x,0,limite.x)
	position.y = clamp(position.y,0,limite.y)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonHistoria_pressed():
	position = Vector2(222.666,394.517)
	show()
	
	


#func _on_flecha1_ANivel1(valueX, valueY):
	#position = Vector2(valueX,valueY)


func _on_FlechaPrimerNivel_ANivel1(valeux,valuey):
	
	position = Vector2(valeux,valuey)
	





func _on_FlechaEntrada_area_entered(area):
	position = Vector2(222.666,394.517)
	return area
	
	


func _on_FlechaN1_area_entered(area):
		hide()
		emit_signal("abrirEjercicio")
		return area
