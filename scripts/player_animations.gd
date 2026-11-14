extends AnimatedSprite2D
class_name PlayerAnimatedSprite

@onready var blink_timer: Timer = %BlinkTimer

var blinking := false

func _on_blink_timer_timeout() -> void:
	if blinking:
		frame = 0
		blinking = false
		blink_timer.wait_time = 3
		blink_timer.start()
		return
	
	blinking = true
	blink_timer.wait_time = 0.1
	frame = 1
	blink_timer.start()
	
