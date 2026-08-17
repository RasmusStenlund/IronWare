extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer

var buttons_pressed := 0
var timer_end = false

func _ready():
	await themed_timer.Timer(6.0)
	timer_end = true


func _process(delta):
	if buttons_pressed == 6:
		if Global.minigames_done > 3:
			get_tree().change_scene_to_file("res://scenes/done_scene.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/timer_scene.tscn")
	if timer_end:
		Global.lives -= 1
		Global.minigames_done -= 1
		get_tree().change_scene_to_file("res://scenes/timer_scene.tscn")
