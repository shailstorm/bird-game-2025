extends Node2D

var cat_data: CatData

func set_data(data: CatData):
	cat_data = data
	$AnimatedSprite2D.texture = cat_data.image
	$Label.text = cat_data.name
