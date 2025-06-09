extends Node2D

@onready var chicken : PackedScene = preload("res://characters/chicken/chicken.tscn")
@onready var chicken_count : int = 10

func _ready():
	for i in chicken_count:
		var c = chicken.instantiate()
		c.position = Vector2(randi_range(-100, 100), randi_range(-200, 200))
		add_child(c)
	
	
func _process(delta: float) -> void:
	pass
