extends Node

var locs = {
	"Play_btn": "main.tscn",
	"Control_btn": "control.tscn",
	"Exit_btn": "exit.tscn"
}

func _button_clicked(var name):
	get_tree().change_scene("res://scenes/"+locs[name])
