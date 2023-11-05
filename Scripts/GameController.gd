extends Node2D

# Pausar el juego
func _input(event):
	if Input.is_action_just_pressed("Pause"):
		if not get_tree().paused:
			$"Pause Menu".show()
			get_tree().paused = not get_tree().paused

# Despausar el juego
func unpause():
	$"Pause Menu".hide()
	get_tree().paused = false
