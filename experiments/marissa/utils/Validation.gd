# validation.gd
class_name Validation

static func validate_props(property_list:Array[Dictionary]) -> void:
	for prop in property_list:
		if prop["usage"] & PROPERTY_USAGE_STORAGE: # this excludes non-exported / godot's internal properties
			var prop_name = prop.name
			var prop_val = property_list.get(prop_name)
			if prop_val == null or (prop_val is String and prop_val.strip_edges() == ""):
				assert(false, "Missing required field: %s" % prop_name)


# call in each resource-subclass.gd (e.g., Bird.gd, BirdMoves.gd)
# func _init():
	#Validation.validate_props(get_property_list())
	
