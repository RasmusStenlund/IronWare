extends Node2D
@onready var arc_container: HBoxContainer = $ArcReactorContainer
@onready var arc1: TextureRect = $ArcReactorContainer/ArcReactor1
@onready var arc2: TextureRect = $ArcReactorContainer/ArcReactor2
@onready var arc3: TextureRect = $ArcReactorContainer/ArcReactor3
@onready var arc4: TextureRect = $ArcReactorContainer/ArcReactor4
@onready var arc5: TextureRect = $ArcReactorContainer/ArcReactor5
@onready var level: RichTextLabel = $Level
@onready var timer: RichTextLabel = $Timer

var time


func _ready():
	await Timer(4.0)
	
	if Global.minigames_done < 3:
		Global.minigames_done += 1
		get_tree().change_scene_to_file("res://scenes/minigame_" + str(Global.minigames_done) + ".tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/title_scene.tscn")


func _process(delta):
	match Global.lives:
		4:
			arc5.texture = load("res://ArcReactorDrawing-Grey.png")
		3:
			arc5.texture = load("res://ArcReactorDrawing-Grey.png")
			arc4.texture = load("res://ArcReactorDrawing-Grey.png")
		2:
			arc5.texture = load("res://ArcReactorDrawing-Grey.png")
			arc4.texture = load("res://ArcReactorDrawing-Grey.png")
			arc3.texture = load("res://ArcReactorDrawing-Grey.png")
		1:
			arc5.texture = load("res://ArcReactorDrawing-Grey.png")
			arc4.texture = load("res://ArcReactorDrawing-Grey.png")
			arc3.texture = load("res://ArcReactorDrawing-Grey.png")
			arc2.texture = load("res://ArcReactorDrawing-Grey.png")
		0:
			get_tree().change_scene_to_file("res://scenes/lose_screen.tscn")
	
	timer.text = str(time)
	level.text = "Level " + str(Global.minigames_done + 1)
	
func Timer(start_time: float):
	time = start_time
	
	while time > 0.0:
		await wait(0.1)
		time -= 0.1
	
	return

func wait(seconds: float):
	await get_tree().create_timer(seconds).timeout
