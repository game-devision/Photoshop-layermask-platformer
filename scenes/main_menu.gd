extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_button_down() -> void:
	get_tree().change_scene_to_file(("res://scenes/levels/level01.tscn"))


func _on_button_button_down2() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Level 2.tscn")


func _on_button_button_down3() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Level 3.tscn")


func _on_button_button_down4() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Level 4.tscn")


func _on_button_button_down5() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Level 5.tscn")


func _on_button_button_down6() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Level 6.tscn")


func _on_button_button_down7() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Level 7.tscn")


func _on_button_button_down8() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Level 8.tscn")
