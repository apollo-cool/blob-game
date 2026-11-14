extends Node2D

@onready var sprite: AnimatedSprite2D = %AnimatedSprite2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if not (body is Player):
		return

	GlobalSignals.checkpoint_reached.emit(position)
