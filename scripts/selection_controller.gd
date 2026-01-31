extends Node2D


# Called when the node enters the scene tree for the first time.
var is_selecting = false
var selection_start = Vector2()
var selection_rect = Rect2()
var ninepactrect = preload("uid://5b4f4hmpdyrc")
var nine_patch_rect = ninepactrect.instantiate()
# Changes mode for layer mask
@export var maskmode = 2


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				# Start selection
				var nine_patch_rect = ninepactrect.instantiate()
				add_child(nine_patch_rect)
				nine_patch_rect.maskmode = maskmode
				nine_patch_rect.is_selecting = true
				nine_patch_rect.selection_start = get_global_mouse_position()
				
				nine_patch_rect.position = selection_start
				nine_patch_rect.size = Vector2()
				
				
			else:
				# End selection
				if nine_patch_rect.is_selecting:
					nine_patch_rect.is_selecting = false
					nine_patch_rect.visible = false
					print("Select space here")
