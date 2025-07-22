extends Node2D

# Preload the animal scenes
const GooseFrames = preload("res://experiments/julia/resources/black_cat.tres")
const ChickenFrames = preload("res://experiments/julia/resources/white_cat.tres")

# Define spawn positions
const SPAWN_POSITIONS = [
	Vector2(100, 100),  # Position for Spot1
	Vector2(100, 200),  # Position for Spot2
	Vector2(200, 200)   # Position for Spot3
]

var spots := []
var spawn_count := 0
var spawned_types := {}  # Track which types have been spawned
var used_positions := []  # Track which positions have been used

func _ready():
	randomize()
	# Get all marker children (the 3 spots)
	print("\n=== Starting Cat Spawner ===")
	spots = [$Spot1, $Spot2, $Spot3]
	print("Found ", spots.size(), " spots")
	
	# Initialize tracking of spawned types
	spawned_types[GooseFrames.name] = false
	spawned_types[ChickenFrames.name] = false
	
	# Try to spawn one of each type at random positions
	spawn_specific_animal(get_random_unused_position(), GooseFrames)
	spawn_specific_animal(get_random_unused_position(), ChickenFrames)
	

# function to compare a random number to the entry_chance for each cat
func entry_randomizer(cat_resource: Resource) -> bool:
	var random_number = snapped(randf_range(0.0,1.0), 0.01)
	print(str("random num ", random_number))
	return true

func get_random_unused_position() -> Vector2:
	var available_positions = []
	
	# Get all unused positions
	for pos in SPAWN_POSITIONS:
		if pos not in used_positions:
			available_positions.append(pos)
	
	if available_positions.size() > 0:
		# Pick a random available position
		var index = randi() % available_positions.size()
		var chosen_pos = available_positions[index]
		used_positions.append(chosen_pos)
		return chosen_pos
	
	# Fallback position if somehow all positions are used
	return SPAWN_POSITIONS[0]
	
	print("Total cats spawned:", spawn_count)
	print("=== Finished Cat Spawner Setup ===\n")

func spawn_specific_animal(pos: Vector2, cat_resource: Resource) -> bool:
	entry_randomizer(cat_resource)
	if spawned_types[cat_resource.name]:
		print("Already spawned a", cat_resource.name)
		return false
		
	var sprite = AnimatedSprite2D.new()
	sprite.frames = cat_resource.sprite_frames
	sprite.play("default")
	sprite.position = pos
	sprite.z_index = 1
	add_child(sprite)
	spawn_count += 1
	spawned_types[cat_resource.name] = true
	print("Spawned cat #", spawn_count, ":", cat_resource.name, " at position:", sprite.position)
	return true
