extends KinematicBody2D

var speed = 100

var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("player_left"):
		vel.x -= speed
	elif Input.is_action_pressed("player_right"):
		vel.x += speed
	elif Input.is_action_pressed("player_up"):
		vel.y -= speed
	elif Input.is_action_pressed("player_down"):
		vel.y += speed	
	move_and_slide(vel, Vector2.UP)
