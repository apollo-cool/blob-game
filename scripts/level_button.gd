extends Control
@export var LevelScene: PackedScene
@export var text := "1"

@onready var button: Button = %Button

func _ready() -> void:
	button.text = text

func _on_button_pressed() -> void:
	GlobalSignals.level_selected.emit(LevelScene)
