extends Control

@onready var level_screen_resource: = preload("res://scenes/Stylebox/level_selector.tscn")
@onready var title_screen: TitleScreen = %TitleScreen
func _on_play_button_pressed() -> void:
	print("test")
	var level_screen: LevelSelector = level_screen_resource.instantiate()
	title_screen.queue_free()
	add_child(level_screen)
	level_screen.position = Vector2(160,0)
	
	
func _on_level_chosen() -> void:
	print("hello")
	var level_screen: LevelSelector = get_node("LevelSelector")
	level_screen.queue_free()
	


func _ready() -> void:
	GlobalSignals.level_selected.connect(_on_level_chosen)
	GlobalSignals.play_button_pressed.connect(_on_play_button_pressed)
