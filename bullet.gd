class_name Bullet extends Node2D

enum Direction {
	Up,
	Down
}

@onready var attack_area: Area2D = %AttackArea
var direction := Direction.Up

func _ready():
	if direction == Direction.Up:
		attack_area.collision_mask = 1
	else:
		attack_area.collision_mask = 2
		

func _process(delta):
	if direction == Direction.Up:
		position += Vector2.UP * 100 * delta
	elif direction == Direction.Down:
		position += Vector2.DOWN * 100 * delta






