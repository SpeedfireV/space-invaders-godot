class_name Player extends CharacterBody2D

@export var bullets_node: Node2D

func _ready():
	GameManager.player = self


func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		velocity = Vector2.LEFT * 500
	elif Input.is_action_pressed("move_right"):
		velocity = Vector2.RIGHT * 500
	else:
		velocity = Vector2.ZERO

	if global_position.x < 50 and velocity.x < 0:
		velocity = Vector2.ZERO
	if global_position.x > 1102 and velocity.x > 0:
		velocity = Vector2.ZERO
		
	move_and_slide() # TODO: #grasgargagr

func _input(event): #guwno
	if Input.is_action_just_pressed("shoot"):
		shoot()


func _process(delta):
	pass


func shoot():
	var bullet_scene: PackedScene = preload("res://bullet.tscn")



	var bullet: Bullet = bullet_scene.instantiate()

	bullet.global_position = global_position
	
	bullets_node.add_child(bullet)
