extends Resource

class_name cat_type

@export var name: String
@export var type: types

@export var meow: String

@export var sprite_frames: SpriteFrames

@export var texture: Texture2D

enum types {
	BLACK,
	WHITE
}

func find_appearance():
	var color: Color 
	match type: 
		0: 
			color = Color(0,0,0,1)
		1: 
			color = Color(1,1,1,1)
	
