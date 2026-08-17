extends Node2D
@onready var win_area: ColorRect = $timing_game/win_area
@onready var cursor: ColorRect = $timing_game/cursor

func _ready():
	pass


func _process(_delta):
	pass


func _on_button_pressed():
	var win_start = win_area.global_position.x
	var win_end = win_start + win_area.size.x
	
	var cursor_start = cursor.global_position.x
	var cursor_end = cursor_start + cursor.size.x
	
	if cursor_start >= win_start and cursor_end <= win_end:
		if Global.minigames_done >= Global.minigame_count:
			get_tree().change_scene_to_file("res://scenes/win_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/timer_scene.tscn")
	else:
		Global.lives -= 1
		Global.minigames_done -= 1
		get_tree().change_scene_to_file("res://scenes/timer_scene.tscn")
