extends Control

@onready var canvas: CanvasLayer = $CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var screen_ui: Control = find_parent("ScreenUI") # get the parent node to connect a button listener
	if not screen_ui:
		push_error("can't find ScreenUI Control node")
	
	var button = screen_ui.open_inventory
	button.connect(_open_inventory)
	
	canvas.hide()


func _open_inventory() -> void:
	print("signal received")
	canvas.show()