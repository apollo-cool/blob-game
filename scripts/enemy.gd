extends CharacterBody2D
class_name Enemy

@export var SPEED := 100

@onready var move_timer: Timer = %MoveTimer
@onready var sprite: AnimatedSprite2D = %AnimatedSprite2D
@onready var raycast: RayCast2D = %RayCast2D

var is_clinging_to_ceiling := false
var direction := 1
var timer_stopped := false

func _physics_process(delta: float) -> void:
	if (not is_on_floor()) and (not is_on_ceiling()):
		velocity += get_gravity() * delta
	
	if raycast.is_colliding():
		direction *= -1
		sprite.flip_h = (direction == -1)
		raycast.target_position.x = abs(raycast.target_position.x) * direction
		raycast.force_raycast_update()
	
	velocity.x = SPEED * direction
	move_and_slide()
func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Hit detected: ", body.name)
	if body is Player:
		GlobalSignals.player_attacked.emit()
