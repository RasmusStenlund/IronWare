extends Node2D
@onready var player: CharacterBody2D = $"../Player"
@onready var self_area = $Area2D
@onready var player_area = $"../Player/Area2D"

signal arc_collected

func _process(delta):
	if player_area.overlaps_area(self_area):
		if self.visible:
			emit_signal("arc_collected")
			self.hide()
