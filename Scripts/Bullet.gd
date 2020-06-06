extends KinematicBody2D

export var speed = 10

func _ready():
	$Timer.start()

func _process(delta):
	move_and_collide(Vector2(0, -speed))
	if $Timer.time_left <= 0:
		queue_free()
