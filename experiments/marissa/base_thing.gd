extends Node2D
class_name BaseThing

@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	#animated_sprite.play("idle")
	play_animation("idle")

func play_animation(anim_name: String):
	if anim_name in animated_sprite.sprite_frames.get_animation_names():
		animated_sprite.play(anim_name)
	else:
		print("Animation not found: ", anim_name)
