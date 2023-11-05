extends Node2D

@export var start_point : Marker2D

func _ready():
	start_game()
	pause()

# Pausar el juego
func _input(event):
	if Input.is_action_just_pressed("Pause"):
		if not get_tree().paused:
			pause()

func pause():
	$"Pause Menu".show()
	get_tree().paused = not get_tree().paused

# Despausar el juego
func unpause():
	$"Pause Menu".hide()
	get_tree().paused = false


func _on_kill_zone_body_entered(body):
	get_tree().paused = true
	$"Game Over Menu".show()

func start_game():
	$"Game Over Menu".hide()
	$"Pause Menu".hide()
	get_tree().paused = false
	$Player.position = start_point.position
	$Player.velocity.y = 0
