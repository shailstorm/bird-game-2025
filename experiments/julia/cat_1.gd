extends Node2D

#@export var cat_stats: Resource
@export var cat_stats: cat_type = preload("res://experiments/julia/resources/black_cat.tres")

var sprite: AnimatedSprite2D

func _ready():
	print(cat_stats.meow)
	sprite = AnimatedSprite2D.new()
	sprite.frames = cat_stats.sprite_frames
	sprite.animation = "default"
	add_child(sprite)
	sprite.play()
	
