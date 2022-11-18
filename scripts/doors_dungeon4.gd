extends Node2D

#door1
onready var rand1 = get_node("../../Node2D").rand(4,0,0)
const NEXT_DOOR1_LEFT_X = 15
const NEXT_DOOR1_LEFT_Y = -190
const NEXT_DOOR1_RIGHT_X = -15
const NEXT_DOOR1_RIGHT_Y = -180

#doorQuit
const BEFORE_DOOR_LEFT_X = 30
const BEFORE_DOOR_LEFT_Y = 195
const BEFORE_DOOR_RIGHT_X = -30
const BEFORE_DOOR_RIGHT_Y = 225
const BEFORE_SCENE = 0



func _physics_process(_delta):
		get_node("../../Node2D").swap(NEXT_DOOR1_RIGHT_X, NEXT_DOOR1_LEFT_X, NEXT_DOOR1_LEFT_Y, NEXT_DOOR1_RIGHT_Y, rand1)
		get_node("../../Node2D").swap(BEFORE_DOOR_RIGHT_X, BEFORE_DOOR_LEFT_X, BEFORE_DOOR_LEFT_Y, BEFORE_DOOR_RIGHT_Y, BEFORE_SCENE)
