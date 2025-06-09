extends Node2D

@onready var canvas_layer: CanvasLayer = $CanvasLayer

func _ready():
	canvas_layer.visible = false

func _enter_tree() -> void:
	pass
	
