extends Node2D

@onready var layer_pannel5: VBoxContainer = $layerPannel2/layerPannel
@onready var layer_pannel4: HBoxContainer = $layerPannel2/LayerBox
@onready var layer_pannel3: HBoxContainer = $layerPannel/layerPannel/layerPannel/LayerBox
@onready var layer_pannel2: HBoxContainer = $layerPannel/layerPannel/LayerBox
@onready var layer_toggle1: CheckBox = $layerPannel/LayerBox/PanelContainer/LayerToggle
@onready var layer_toggle2: CheckBox = $layerPannel/layerPannel/LayerBox/PanelContainer/LayerToggle
@onready var layer_toggle3: CheckBox = $layerPannel/layerPannel/layerPannel/LayerBox/PanelContainer/LayerToggle
@onready var layer_toggle4: CheckBox = $layerPannel2/LayerBox/PanelContainer/LayerToggle
@onready var layer_toggle5: CheckBox = $layerPannel2/layerPannel/LayerBox/PanelContainer/LayerToggle
var toggled_button


var avaliable_layers = 3

# Called when the node enters the scene tree for the first time.

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if avaliable_layers < 5:
		layer_pannel5.visible = false
	if avaliable_layers < 4:
		layer_pannel4.visible = false
	if avaliable_layers < 3:
		layer_pannel3.visible = false
	if avaliable_layers < 2:
		layer_pannel2.visible = false
		
	if toggled_button == 1:
		layer_toggle1.button_pressed = true
	else:
		layer_toggle1.button_pressed = false
	if toggled_button == 2:
		layer_toggle2.button_pressed = true
	else:
		layer_toggle2.button_pressed = false
	if toggled_button == 3:
		layer_toggle3.button_pressed = true
	else:
		layer_toggle3.button_pressed = false
	if toggled_button == 4:
		layer_toggle4.button_pressed = true
	else:
		layer_toggle4.button_pressed = false
	if toggled_button == 4:
		layer_toggle5.button_pressed = true
	else:
		layer_toggle5.button_pressed = false
	

# Second button
func _on_layer_toggle_button_down() -> void:
		get_tree().get_first_node_in_group("SelectController").maskmode = 4
		print("button toggled2")
		toggled_button = 2


func _on_layer_toggle_button_down1() -> void:
	get_tree().get_first_node_in_group("SelectController").maskmode = 2
	print("button toggled1")
	toggled_button = 1


func _on_layer_toggle_button_down3() -> void:
	get_tree().get_first_node_in_group("SelectController").maskmode = 8
	print("button toggled3")
	toggled_button = 3


func _on_layer_toggle_button_down4() -> void:
	get_tree().get_first_node_in_group("SelectController").maskmode = 16
	toggled_button = 4


func _on_layer_toggle_button_down5() -> void:
	get_tree().get_first_node_in_group("SelectController").maskmode = 32
	toggled_button = 5
