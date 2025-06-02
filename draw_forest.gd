extends TileMapLayer

func _drawRectangle(width, height, starting_x, starting_y) -> void:
	var fill_coords = Vector2i(width, height)
	var starting_coords = Vector2i(starting_x, starting_y)
	var atlas_coords = Vector2i(1, 1)
	self.set_cell(fill_coords, 0, atlas_coords)
	self.set_cell(starting_coords, 0, atlas_coords)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_drawRectangle(900, 2000, 0, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
