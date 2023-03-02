extends KinematicBody2D

var health = 5

var targeted_entity = null
func _ready():
	print(get_tree().get_current_scene().get_name())

var state = "wander"

func _process(delta: float) -> void:
	if(state == "chase"):
		rotation = global_position.angle_to_point(targeted_entity.global_position)
		move_and_slide(Vector2(cos(rotation), sin(rotation))*-50)
	
	if(health<=0):
		queue_free()
	
func _on_alert_body_entered(body: Node) -> void:
	if !is_instance_valid(targeted_entity):
		targeted_entity=body
		state = "chase"

