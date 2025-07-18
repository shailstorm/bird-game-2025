class_name BirdMoves
extends SpriteFrames

const REQUIRED_ANIMATIONS = ["default", "walk"]

func _init():
	for anim_name in REQUIRED_ANIMATIONS:
		if not has_animation(anim_name):
			assert(false, "Missing required animation: %s" % anim_name)

	
