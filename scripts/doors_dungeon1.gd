extends Node2D

#door1
onready var rand1 = get_node("../../Node2D").rand(1,0,0)
const NEXT_DOOR1_LEFT_X = -90
const NEXT_DOOR1_LEFT_Y = -190
const NEXT_DOOR1_RIGHT_X = -110
const NEXT_DOOR1_RIGHT_Y = -180

#door2
onready var rand2 = get_node("../../Node2D").rand(1,rand1,0)
const NEXT_DOOR2_LEFT_X = 125
const NEXT_DOOR2_LEFT_Y = -190
const NEXT_DOOR2_RIGHT_X = 105
const NEXT_DOOR2_RIGHT_Y = -180

#doorQuit
const BEFORE_DOOR_LEFT_X = 30
const BEFORE_DOOR_LEFT_Y = 180
const BEFORE_DOOR_RIGHT_X = -30
const BEFORE_DOOR_RIGHT_Y = 215
const BEFORE_SCENE = 0



func _physics_process(_delta):
	get_node("../../Node2D").swap(NEXT_DOOR2_RIGHT_X, NEXT_DOOR2_LEFT_X, NEXT_DOOR2_LEFT_Y, NEXT_DOOR2_RIGHT_Y, rand1)
	get_node("../../Node2D").swap(NEXT_DOOR1_RIGHT_X, NEXT_DOOR1_LEFT_X, NEXT_DOOR1_LEFT_Y, NEXT_DOOR1_RIGHT_Y, rand2)
	get_node("../../Node2D").swap(BEFORE_DOOR_RIGHT_X, BEFORE_DOOR_LEFT_X, BEFORE_DOOR_LEFT_Y, BEFORE_DOOR_RIGHT_Y, BEFORE_SCENE)
