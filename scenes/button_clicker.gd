extends TextureButton
@onready var parent = $".."

func _on_pressed():
	hide()
	parent.buttons_pressed += 1
