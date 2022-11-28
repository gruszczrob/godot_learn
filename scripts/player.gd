extends KinematicBody2D

const SPEED = 200
#ice
#const ACCELERATION = 10


var velocity: Vector2 = Vector2()
var direction: Vector2 = Vector2()
var move: Vector2 = Vector2()
onready var animationPlayer = $AnimationPlayer
var moving: bool = false

func turn():
	var diff: Vector2 = Vector2(get_global_mouse_position() -position)
	
	if abs(diff.x)>2*abs(diff.y) or abs(diff.y)>2*abs(diff.x):
		if abs(diff.x)>2*abs(diff.y):
			if diff.x>0:
				if moving == true:
					animationPlayer.play("RunRight")
				else:
					animationPlayer.play("IdleRight")
			else:
				if moving == true:
					animationPlayer.play("RunLeft")
				else:
					animationPlayer.play("IdleLeft")
		else:
			if diff.y>0:
				if moving == true:
					animationPlayer.play("RunDown")
				else:
					animationPlayer.play("IdleDown")
			else:
				if moving == true:
					animationPlayer.play("RunUp")
				else:
					animationPlayer.play("IdleUp")
	else: 
		if diff.x>0:
			if diff.y>0:
				animationPlayer.play("IdleRD")
			else:
				animationPlayer.play("IdleRU")
		else:
			if diff.y>0:
				animationPlayer.play("IdleLD")
			else:
				animationPlayer.play("IdleLU")


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
		
	if velocity==Vector2(0,0) :
		moving=false
	else: 
		moving=true

	velocity = velocity.normalized()
	move = velocity*SPEED
	velocity = move_and_slide(move)
	



func _physics_process(delta):
	read_input()
	turn()
	velocity=velocity.rotated(rotation)

	
