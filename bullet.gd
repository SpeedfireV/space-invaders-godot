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

	attack_area.area_entered.connect(_on_attack_area_entered)
		

func _process(delta):
	if direction == Direction.Up:
		position += Vector2.UP * 100 * delta
	elif direction == Direction.Down:
		position += Vector2.DOWN * 100 * delta




func _on_attack_area_entered(area: Area2D):
	if area.get_parent() is Enemy:
		area.get_parent().queue_free()
		queue_free()
