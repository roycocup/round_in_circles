extends Node2D

onready var world = get_tree().get_root().get_node("World")

var look_at_point = Vector2()
onready var point = world.get_node("Center").transform.origin

func _ready():
	pass

func _process(delta):	
	look_at(point)
	rotate(deg2rad(90))
	
	
func _input(event):
	if event is InputEventKey:
		if Input.is_action_pressed("ui_left"):
			position.x -= 5
			position.y -= 5
		if Input.is_action_pressed("ui_right"):
			position.x += 5
			position.y += 5			

func _draw():
	$Sprite.visible = true
	pass
		
		
