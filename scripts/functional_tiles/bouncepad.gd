extends Area2D

# 默认向上弹 (0, -500)。贴左墙向右弹可设为 (600, -300)，贴右墙向左弹可设为 (-600, -300)
@export var bounce_velocity: Vector2 = Vector2(900, 0)

func _on_body_entered(body: Node2D) -> void:
	var player := body as Player
	if player:
		player.apply_bounce(bounce_velocity)
