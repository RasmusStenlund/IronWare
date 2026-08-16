extends Node2D
@onready var timer: RichTextLabel = $timer

var time : float

func _ready():
	pass



func _process(delta):
	timer.text = str(snapped(time, 0.10))

func Timer(start_time: float):
	time = start_time
	
	while time > 0.0:
		await wait(0.10)
		time -= 0.10
	
	return

func wait(seconds: float):
	await get_tree().create_timer(seconds).timeout
