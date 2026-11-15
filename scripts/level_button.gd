extends Control
@export var LevelScene: PackedScene


func _on_button_pressed() -> void:
	GlobalSignals.level_selected.emit(LevelScene)
