extends CharacterBody2D


var SPEED = 300.0

func _ready():
	randomize()
	velocity.x = [1,-1][randf()]
	velocity.y = 1
func _physics_process(delta):
	var col_obj = move_and_collide(velocity*SPEED*delta)
		
	if col_obj:	
		print(col_obj.get_collider())
		velocity = velocity.bounce(col_obj.get_normal())
		if col_obj.get_collider() != $"../player" and col_obj.get_collider() != $"../LeftWall" and col_obj.get_collider() != $"../Top" and col_obj.get_collider() != $"../RightWall":
			col_obj.get_collider().queue_free()
			SPEED += 10
			get_parent().score += 1
			get_parent().get_node("player").SPEED += 0.1
	
