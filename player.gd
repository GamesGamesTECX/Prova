extends CharacterBody2D


var SPEED = 5.0

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 1
	move_and_collide(velocity*SPEED)
