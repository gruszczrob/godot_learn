extends Node

var locs = {
	"dwor_btn": "main.tscn",
	"dungeon1_btn": "dungeon1.tscn",
	"dungeon2_btn": "dungeon2.tscn",
	"dungeon3_btn": "dungeon3.tscn",
	"dungeon4_btn": "dungeon4.tscn"
}

func _button_clicked(var name):
	get_tree().change_scene("res://scenes/"+locs[name])
