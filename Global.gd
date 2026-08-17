extends Node

var minigames_done = 0
var lives = 5
var minigame_count = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func reset():
	minigames_done = 0
	lives = 5
