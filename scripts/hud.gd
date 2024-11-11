extends CanvasLayer

signal start_game

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

func show_game_over():
	show_message("GAME OVER")
	
	await $MessageTimer.timeout
	
	$Message.text = "DODGE THE ENEMIES!"
	$Message.show()
	
	await get_tree().create_time(1.0).timeout
	$StartButton.show()
	
func update_score(score):
	$ScoreLabel.text = str(score)


func _on_start_button_pressed() -> void:
	pass # Replace with function body.
