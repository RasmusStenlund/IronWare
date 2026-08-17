extends Node2D
@onready var container = $ButtonContainer
@onready var settings = $Settings

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_start_pressed():
	Global.reset()
	get_tree().change_scene_to_file("res://scenes/timer_scene.tscn")
	


func _on_quit_pressed():
	get_tree().quit()


func _on_settings_pressed():
	container.hide()
	settings.show()


func _on_back_pressed():
	settings.hide()
	container.show()


func _on_check_box_toggled(toggled_on):
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
