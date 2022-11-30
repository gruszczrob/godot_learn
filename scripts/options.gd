extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _button_clicked(var nam):
	get_tree().change_scene("res://scenes/Main_menu.tscn")
