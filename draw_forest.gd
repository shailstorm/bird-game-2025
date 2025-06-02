extends TileMapLayer

func _fillRectangle(x1, y1, x2, y2) -> void: 
	"""
		fills from top left corner (x1, y1) to bottom right corner (x2, y2) inclusive
	"""
	
	var atlas_coords = Vector2i(1, 1)
	for x in range(x1, x2):
		for y in range(y1, y2):
			var fill_coords = Vector2i(x, y)
			self.set_cell(fill_coords, 0, atlas_coords)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_fillRectangle(0, 0, 56, 125)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
