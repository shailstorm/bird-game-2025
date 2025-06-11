extends Node2D

@onready var canvas_layer: CanvasLayer = $CanvasLayer

func _ready():
	var game_ui: Node = find_parent("ScreenUI")
	if (game_ui == null):
		push_error("ScreenUI not found")
	else:
		game_ui.open_shop_menu.connect(_open_shop_menu)

	canvas_layer.visible = false

func _enter_tree() -> void:
	pass
	
func _open_shop_menu():
	print("signal received")
	canvas_layer.visible = true

	
