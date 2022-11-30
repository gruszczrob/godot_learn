extends Node2D

var dungeons = ["main.tscn","dungeon1.tscn","dungeon2.tscn","dungeon3.tscn", "dungeon4.tscn"]


func swap(var DOOR_RIGHT_X, var DOOR_LEFT_X,var DOOR_LEFT_Y, var DOOR_RIGHT_Y, var NEXT_SCENE):
	var Player_position = $Player.position
	if Player_position[0]>DOOR_RIGHT_X and Player_position[0]<DOOR_LEFT_X and Player_position[1]>DOOR_LEFT_Y and Player_position[1]<DOOR_RIGHT_Y:
		if Input.is_action_pressed("z"):
			get_tree().change_scene("res://scenes/"+str(dungeons[NEXT_SCENE]))

func rand(var notIt1, var notIt2, var notIt3):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var	my_random_number = notIt1
	while my_random_number==notIt1 or my_random_number==notIt2 or my_random_number==notIt3:
		my_random_number = floor(rng.randf_range(1, dungeons.size()))
	return my_random_number

