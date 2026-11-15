extends Node2D

@export var lives := 3
@onready var streamer: AudioStreamPlayer2D = %AudioStreamPlayer2D

signal player_lost_life(lives_remaining: int)

var next_level: PackedScene
var level: Level

func _on_game_won() -> void:
	
	GlobalSignals.game_over.emit(true)
	level.queue_free()

func load_level(level_info: PackedScene) -> void:
	print("Now loading level")
	level = level_info.instantiate()
	add_child(level)
	level.player_died.connect(_on_player_died)


func _on_player_died() -> void:
	lives -= 1
	player_lost_life.emit(lives)
	
	if lives <= 0:
		GlobalSignals.game_over.emit(false)
		level.queue_free()

func _on_audio_stream_player_2d_finished() -> void:
	streamer.play()

func _ready() -> void:
	GlobalSignals.level_selected.connect(load_level)
	
