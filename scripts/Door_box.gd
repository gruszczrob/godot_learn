class_name Door_box
extends Area2D

var player_on = false

func _init() -> void:
	collision_layer = 2
	collision_mask = 0

func _ready() -> void:
	connect("area_entered", self, "_on_area_entered")
	connect("area_exited", self, "_on_area_exited")

func _on_area_entered(travelbox: Travel_box) -> void:
	player_on = true

func _on_area_exited(travelbox: Travel_box) -> void:
	player_on = false
	
func _physics_process(delta):
	if Input.is_action_pressed("e"):
		if player_on==true:
			get_tree().change_scene("res://scenes/map.tscn")
