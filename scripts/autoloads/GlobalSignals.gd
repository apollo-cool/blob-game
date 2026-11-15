extends Node

@warning_ignore("unused_signal")
signal checkpoint_reached(checkpoint_position: Vector2)
@warning_ignore("unused_signal")
signal goal_reached(checkpoint_position: Vector2)
@warning_ignore("unused_signal")
signal player_attacked
@warning_ignore("unused_signal")
signal play_button_pressed
@warning_ignore("unused_signal")
signal level_selected(level: PackedScene)
@warning_ignore("unused_signal")
signal game_over(win: bool)
