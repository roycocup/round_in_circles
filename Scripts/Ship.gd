extends Node2D

onready var world = get_tree().get_root().get_node("World")

var look_at_point = Vector2()

func _ready():
	var origin = transform.get_origin()
	look_at_point = Vector2(origin.x, origin.y)
	#look_at(look_at_point)
	pass

func _process(delta):
	look_at(look_at_point)
	pass
	
func _input(event):
	if event is InputEventKey:
		if Input.is_action_pressed("ui_up"):
			pass
		if Input.is_action_pressed("ui_down"):
			pass
			

func _draw():
	if world.DEBUG == true:
		#$Sprite.visible = false
		draw_line(Vector2(), Vector2(0, -105), Color.white)
