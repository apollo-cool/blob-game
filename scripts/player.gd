extends CharacterBody2D
class_name Player

@export var SPEED := 300
@export var JUMP_VELOCITY := 400
@export var ceiling_bounce_force: float = 400.0
var is_bouncing: bool = false

func apply_bounce(bounce_vel: Vector2) -> void:
	if bounce_vel.x != 0.0:
		velocity.x = bounce_vel.x
	if bounce_vel.y != 0.0:
		velocity.y = bounce_vel.y
	is_bouncing = true



var is_clinging_to_ceiling := false

func _physics_process(delta: float) -> void:
	
	if (not is_on_floor()) and (not is_on_ceiling()):
		velocity += get_gravity() * delta
		
	var jump_velocity := Vector2(0, 0)
	
	if (Input.is_action_just_pressed("jump") and (is_on_ceiling() or is_on_floor())):
		jump_velocity.y = JUMP_VELOCITY 
		
	if is_on_floor():
		jump_velocity.y *= -1
		
	if abs(jump_velocity.y) > 0:
		velocity.y = jump_velocity.y
	
	
	var direction := Input.get_axis("move_left", "move_right")
	var sprite: AnimatedSprite2D = %AnimatedSprite2D

	if direction:
		sprite.flip_h = (direction == 1)
		velocity.x = direction * SPEED
	else: 
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
	
	if is_bouncing and is_on_ceiling():
		velocity.y = ceiling_bounce_force
		is_bouncing = false

	if is_on_floor():
		is_bouncing = false
