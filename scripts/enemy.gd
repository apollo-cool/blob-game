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
	
	velocity.x = SPEED * direction
	
	if(raycast.is_colliding()):
		if direction == -1:
			sprite.flip_h = true
			direction = 1
		else:
			direction = -1
			sprite.flip_h = false
		
	move_and_slide()




	
