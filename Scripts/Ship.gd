extends KinematicBody2D

onready var world = get_tree().get_root().get_node("World")
onready var point = world.get_node("Center").transform.origin
onready var bullet = preload("res://Scenes/Bullet.tscn") as PackedScene

var look_at_point = Vector2()

export var speed = 100
export var cooldown_time = 0.5
export var cooldown_elapsed = 0
export var shoot_ready = true

func _ready():
	pass

func _process(delta):	
	pass
	
func _input(event):
	if event is InputEventKey:
		look_at(point)
		rotate(deg2rad(90))
		
		if Input.is_action_pressed("ui_left"):
			move_and_slide(Vector2(-1, 0).rotated(rotation) * speed)
			
		if Input.is_action_pressed("ui_right"):
			move_and_slide(Vector2(1, 0).rotated(rotation) * speed)
			
		if Input.is_action_pressed("ui_fire"):
			var b = bullet.instance()
			add_child(b)
					
