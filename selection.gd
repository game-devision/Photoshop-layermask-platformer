extends NinePatchRect

var camera
# Colision shape 2d & area 2d dont support moving the pivot so i'm using this as a workaround
@onready var pivot_sprite: Sprite2D = $"pivot sprite"
var is_selecting = false
var selection_start = Vector2()
var selection_rect = Rect2()
@onready var nine_patch_rect: NinePatchRect = $"."
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	camera = get_tree().get_first_node_in_group("MainCam")


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				# Start selection
				is_selecting = true
				selection_start = get_global_mouse_position()
				nine_patch_rect.position = selection_start
				nine_patch_rect.size = Vector2()
				
				
			else:
				# End selection
				if is_selecting:
					is_selecting = false
					#nine_patch_rect.visible = false
					print("Select space here")

		

	elif event is InputEventMouseMotion:
		if is_selecting:
			# Show selection box only when mouse is dragged and rect is larger than (32,32)
			if selection_rect.size.length() > 32:
				nine_patch_rect.visible = true
			else:
				nine_patch_rect.visible = false




func _process(delta):
	
	if is_selecting:
		# Continuously update the selection rectangle to match the mouse position
		var current_mouse_position = get_global_mouse_position()
		selection_rect = Rect2(selection_start, current_mouse_position - selection_start).abs()
		nine_patch_rect.position = selection_rect.position
		nine_patch_rect.size = selection_rect.size
		pivot_sprite.position = selection_start - selection_rect.position
		if selection_rect.position.y < selection_start.y:
			pivot_sprite.scale.y = -selection_rect.size.y / 40
		else:
			pivot_sprite.scale.y = selection_rect.size.y / 40
	
		if selection_rect.position.x < selection_start.x:
			pivot_sprite.scale.x = -selection_rect.size.x / 40
		else:
			pivot_sprite.scale.x = selection_rect.size.x / 40
		
		
		
	
