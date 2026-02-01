extends Area2D

@export var level = 1
var already_completed
# Called when the node enters the scene tree for the first time.


func _on_body_entered(body: Node2D) -> void:
	if body == get_tree().get_first_node_in_group("Player"):
		for existing_value in GameStats.completedLevels:
			if level == existing_value:
				already_completed = true
	if not already_completed:
		GameStats.completedLevels.append(level)
				
	get_tree().change_scene_to_file("res://scenes/Main Menu.tscn")
