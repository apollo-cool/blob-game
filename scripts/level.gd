extends Node2D
signal player_died

@onready var player_template := preload("res://scenes/player.tscn")
@onready var player: Player = %Player
@onready var respawn_timer: Timer = %RespawnTimer
var checkpoint_position: Vector2

func _on_checkpoint(included_position: Vector2) -> void:
	checkpoint_position = included_position

func kill_player() -> void:
	player_died.emit()
	respawn_timer.start()
	player.queue_free()
	

func respawn_player() -> void:
	player = player_template.instantiate()
	add_child(player)
	player.position = checkpoint_position
	var camera: Camera2D = player.get_node("Camera2D")
	
	camera.make_current()
func _on_fall_death_body_entered(body: Node2D) -> void:
	if (body is Player):
		kill_player()
