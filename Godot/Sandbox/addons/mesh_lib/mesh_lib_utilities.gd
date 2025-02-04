@tool
extends EditorPlugin

func make_branches():
	pass

func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	pass


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	pass

func _get_save_directory():
	var dialog = FileDialog.new()
	dialog.mode = FileDialog.MODE_SAVE_FILE # Makes it easier to select folder
	get_tree().get_root().add_child(dialog) # Add to the root so it's visible
	dialog.popup()
	await dialog. # Wait for the user to select
	var selected_dir = dialog.current_path
	dialog.queue_free() # Clean up the dialog
	return selected_dir
