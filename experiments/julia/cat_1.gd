extends Node2D

#@export var cat_stats: Resource
@export var cat_stats: cat_type = preload("res://experiments/julia/resources/black_cat.tres")

func _ready():
	print(cat_stats.meow)
