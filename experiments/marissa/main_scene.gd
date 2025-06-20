extends Node2D

var variant_paths = [
	"res://experiments/marissa/variant_a/variant_a.tscn",
	"res:///experiments/marissa/variant_b/variant_b.tscn"
]

func spawn_random_variant():
	var random_index = randi() % variant_paths.size()
	var scene_path = variant_paths[random_index]
	
	var variant_scene = load(scene_path)  # Loads the scene resource at runtime
	var variant_instance = variant_scene.instantiate()
	
	add_child(variant_instance)
