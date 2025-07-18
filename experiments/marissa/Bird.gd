class_name Bird
extends Resource

#https://simondalvai.org/blog/godot-custom-resources/#save-and-load

# @export -> properties show up in the Inspector pane
@export var name:String
@export var moves:SpriteFrames
@export var texture:Texture2D
@export var memento_texture:Texture2D # TODO: define memento custom resource to be able to define required properties of it. 
@export var sound:String
@export var personality:String

# TODO? : implement way to enforce at runtime that only one [Bird Type] shows up at a time ? 

func _init():
	Validation.validate_props(get_property_list())
	
	
