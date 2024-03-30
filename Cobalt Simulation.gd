extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cobalt_left = 5
var time_left = 15

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Area2D_tree_exiting():
	cobalt_left = cobalt_left - 1
	$Label.text = str(cobalt_left) + " Cobalt Left"
	if cobalt_left == 0 and time_left > 0:
		get_tree().change_scene("res://Win.tscn")
	pass # Replace with function body.


func _on_Timer_timeout():
	time_left = time_left - 1
	$Time.text = "Time Left: " + str(time_left)
	if time_left < 1:
		get_tree().change_scene("res://Game Over.tscn")
	pass # Replace with function body.
