extends Node2D
const DOOR_LEFT_X = -110
const DOOR_LEFT_Y = 390
const DOOR_RIGHT_X = -162
const DOOR_RIGHT_Y = 410
const NEXT_SCENE = 1


func _physics_process(_delta):
	get_node("../../Node2D").swap(DOOR_RIGHT_X, DOOR_LEFT_X, DOOR_LEFT_Y, DOOR_RIGHT_Y, NEXT_SCENE)
