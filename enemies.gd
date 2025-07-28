class_name Enemies extends Node2D

var x_offset: int = 70
var y_offset: int = 70

func _ready():
	var enemy_scene: PackedScene = preload("res://enemy.tscn")
	for i in range(4):
		for j in range(4):
			var enemy: Enemy = enemy_scene.instantiate()
			enemy.position = Vector2((i - 2) * x_offset, (j - 2) * y_offset)
			add_child(enemy)
