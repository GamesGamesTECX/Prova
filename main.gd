extends Node2D


var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = str(score)
	for n in range(19):
		for m in range(20):
			var brick = preload("res://brick.tscn").instantiate()
			add_child(brick)
			brick.position.x = 25+(n*25)
			brick.position.y = 10+(m*25)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = str(score)
	
	pass
