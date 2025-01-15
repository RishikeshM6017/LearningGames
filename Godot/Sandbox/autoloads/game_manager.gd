extends Node

func start_new_game() -> void:
	get_tree().change_scene_to_file("res://content/scenes/smokeroom/smokeroom.tscn")

func change_scene() -> void:
	pass

func open_settings_menu() -> void:
	pass

func quit() -> void:
	get_tree().quit()
