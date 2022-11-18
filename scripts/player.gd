extends KinematicBody2D

const SPEED = 200
#ice
#const ACCELERATION = 10


var velocity: Vector2 = Vector2()
var direction: Vector2 = Vector2()
var move: Vector2 = Vector2()
onready var animationPlayer = $AnimationPlayer

func turn():
	var Player_position = position
	var Mouse_position = get_global_mouse_position() 
	
	if Player_position[0]<Mouse_position[0] and abs(Player_position[0] - Mouse_position[0])>abs(Player_position[1] - Mouse_position[1]):
		if Input.is_action_pressed("up") or Input.is_action_pressed("down") or Input.is_action_pressed("right") or Input.is_action_pressed("left"):
			animationPlayer.play("RunRight")
		else:
			animationPlayer.play("IdleRight")
			
	if Player_position[0]>Mouse_position[0] and abs(Player_position[0] - Mouse_position[0])>abs(Player_position[1] - Mouse_position[1]):
		if Input.is_action_pressed("up") or Input.is_action_pressed("down") or Input.is_action_pressed("right") or Input.is_action_pressed("left"):
			animationPlayer.play("RunLeft")
		else:
			animationPlayer.play("IdleLeft")
			
	if Player_position[1]<Mouse_position[1] and abs(Player_position[0] - Mouse_position[0])<abs(Player_position[1] - Mouse_position[1]):
		if Input.is_action_pressed("up") or Input.is_action_pressed("down") or Input.is_action_pressed("right") or Input.is_action_pressed("left"):
			animationPlayer.play("RunDown")
		else:
			animationPlayer.play("IdleDown")
		
	if Player_position[1]>Mouse_position[1] and abs(Player_position[0] - Mouse_position[0])<abs(Player_position[1] - Mouse_position[1]):
		if Input.is_action_pressed("up") or Input.is_action_pressed("down") or Input.is_action_pressed("right") or Input.is_action_pressed("left"):
			animationPlayer.play("RunUp")
		else:
			animationPlayer.play("IdleUp")



func read_input():
#porusznie się postaci
	velocity = Vector2()
	
	if Input.is_action_pressed("up"):
		velocity.y -=1
		direction = Vector2(0,-1)

	if Input.is_action_pressed("down"):
		velocity.y +=1
		direction = Vector2(0, 1)

	if Input.is_action_pressed("left"):
		velocity.x -=1
		direction = Vector2(-1, 0)

	if Input.is_action_pressed("right"):
		velocity.x +=1
		direction = Vector2(1, 0)

	velocity = velocity.normalized()
	move = velocity*SPEED
	velocity = move_and_slide(move)
	



func _physics_process(_delta):
	read_input()
	turn()
	velocity=velocity.rotated(rotation)

	
