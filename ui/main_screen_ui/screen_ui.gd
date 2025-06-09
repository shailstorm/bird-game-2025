extends Control


func _on_shop_button_pressed() -> void:
	print("shop pressed")
	emit_signal("open_shop_menu")
