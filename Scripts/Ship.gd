extends KinematicBody2D

onready var world = get_tree().get_root().get_node("World")
onready var point = world.get_node("Center").transform.origin

var look_at_point = Vector2()

export var speed = 100

func _ready():
	pass

func _process(delta):	
	pass
	
func _input(event):
	if event is InputEventKey:
		var velocity = Vector2()
		look_at(point)
		rotate(deg2rad(90))
		if Input.is_action_pressed("ui_left"):
			velocity = Vector2(-1, 0).rotated(rotation) * speed
		if Input.is_action_pressed("ui_right"):
			velocity = Vector2(1, 0).rotated(rotation) * speed
			
		move_and_slide(velocity)

func _draw():
	pass
		
		
