extends Node2D

@export var lives := 3
@onready var streamer: AudioStreamPlayer2D = %AudioStreamPlayer2D

signal game_won
signal game_lost
signal player_lost_life(lives_remaining: int)

var next_level: PackedScene

func _on_game_won() -> void:
	game_won.emit()

func load_level(level_info: PackedScene) -> void:
	print("Now loading level")
	var level: Level = level_info.instantiate()
	add_child(level)
	level.game_won.connect(_on_game_won)


func _on_player_died() -> void:
	lives -= 3
	player_lost_life.emit(lives)
	
	if lives <= 0:
		game_lost.emit()


func _on_audio_stream_player_2d_finished() -> void:
	streamer.play()

func _ready() -> void:
	GlobalSignals.level_selected.connect(load_level)
