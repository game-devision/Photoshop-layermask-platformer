extends Area2D

@export var level = 1
# Called when the node enters the scene tree for the first time.


func _on_body_entered(body: Node2D) -> void:
	if body == get_tree().get_first_node_in_group("Player"):
		GameStats.completedLevels.append(level)
		get_tree().change_scene_to_file("res://scenes/Main Menu.tscn")
