extends Control
class_name TitleScreen
func _on_texture_button_pressed() -> void:
	GlobalSignals.play_button_pressed.emit()
