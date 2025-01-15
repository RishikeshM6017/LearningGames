class_name MainMenu
extends Control

@onready var continue_button: Button = $Control/MarginContainer/VBoxContainer/ContinueButton
@onready var start_button: Button = $Control/MarginContainer/VBoxContainer/StartButton
@onready var load_button: Button = $Control/MarginContainer/VBoxContainer/LoadButton
@onready var settings_button: Button = $Control/MarginContainer/VBoxContainer/SettingsButton
@onready var quit_button: Button = $Control/MarginContainer/VBoxContainer/QuitButton

var save_game_exists: bool = false

func _ready() -> void:
	continue_button.visible = save_game_exists
	load_button.disabled = not save_game_exists


func _on_continue_button_pressed() -> void:
	pass


func _on_start_button_pressed() -> void:
	GameManager.start_new_game()


func _on_load_button_pressed() -> void:
	pass


func _on_settings_button_pressed() -> void:
	pass


func _on_quit_button_pressed() -> void:
	GameManager.quit()
