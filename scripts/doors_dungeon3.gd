extends Node2D

#door1
onready var rand1 = get_node("../../Node2D").rand(3,0,0)
const NEXT_DOOR1_LEFT_X = 15
const NEXT_DOOR1_LEFT_Y = -190
const NEXT_DOOR1_RIGHT_X = -15
const NEXT_DOOR1_RIGHT_Y = -180


#door2
onready var rand2 = get_node("../../Node2D").rand(3,rand1,0)
const NEXT_DOOR2_LEFT_X = -105
const NEXT_DOOR2_LEFT_Y = -190
const NEXT_DOOR2_RIGHT_X = -135
const NEXT_DOOR2_RIGHT_Y = -180


#door3
onready var rand3 = get_node("../../Node2D").rand(3,rand1,rand3)
const NEXT_DOOR3_LEFT_X = 135
const NEXT_DOOR3_LEFT_Y = -190
const NEXT_DOOR3_RIGHT_X = 105
const NEXT_DOOR3_RIGHT_Y = -180


#doorQuit
const BEFORE_DOOR_LEFT_X = 30
const BEFORE_DOOR_LEFT_Y = 195
const BEFORE_DOOR_RIGHT_X = -30
const BEFORE_DOOR_RIGHT_Y = 225
const BEFORE_SCENE = 0



func _physics_process(_delta):
	get_node("../../Node2D").swap(NEXT_DOOR1_RIGHT_X, NEXT_DOOR1_LEFT_X, NEXT_DOOR1_LEFT_Y, NEXT_DOOR1_RIGHT_Y, rand1)
	get_node("../../Node2D").swap(NEXT_DOOR2_RIGHT_X, NEXT_DOOR2_LEFT_X, NEXT_DOOR2_LEFT_Y, NEXT_DOOR2_RIGHT_Y, rand2)
	get_node("../../Node2D").swap(NEXT_DOOR3_RIGHT_X, NEXT_DOOR3_LEFT_X, NEXT_DOOR3_LEFT_Y, NEXT_DOOR3_RIGHT_Y, rand3)
	get_node("../../Node2D").swap(BEFORE_DOOR_RIGHT_X, BEFORE_DOOR_LEFT_X, BEFORE_DOOR_LEFT_Y, BEFORE_DOOR_RIGHT_Y, BEFORE_SCENE)
