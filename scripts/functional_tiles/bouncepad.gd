extends Area2D

@export var bounce_force: float = -500.0

func _on_body_entered(body: Node2D) -> void:
	var player := body as Player
	if player:
		player.apply_bounce(bounce_force)
