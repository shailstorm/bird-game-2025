extends Control

signal open_shop_menu
signal open_inventory

func _on_shop_button_pressed() -> void:
	print("shop pressed")
	# this is the godot 3 way, but the other way is preferred
	#emit_signal("open_shop_menu")
	open_shop_menu.emit()


func _on_inventory_button_pressed() -> void:
	print("inventory pressed")
	open_inventory.emit()
