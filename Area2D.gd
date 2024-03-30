extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var active = false
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	position = Vector2(randi() % 1370 - 800, randi() % 870 - 240)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	if Input.is_action_pressed("click") and active:
		queue_free()
	pass # Replace with function body.

func _on_Area2D_mouse_entered():
	active = true
	pass # Replace with function body.


func _on_Area2D_mouse_exited():
	active = false
	pass # Replace with function body.
