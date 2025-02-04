@tool
extends EditorPlugin

var is_hidden: bool = true

func _input(event):
	if event is InputEventKey and event.is_pressed() and event.keycode == KEY_BACKSLASH:
		var e = get_editor_interface()
		var children = e.get_edited_scene_root().get_children()
		if (is_hidden):
			for child in children:
				unhide(child)
			is_hidden = false
		else:
			for child in children:
				hide_unselected(child, e.get_selection().get_selected_nodes())
			is_hidden = true
			#toggle_unselected_visibility(child, e.get_selection().get_selected_nodes())
		
func toggle_unselected_visibility(node, selection):
	if not node in selection:
		if "visible" in node:
			node.visible = not node.visible
		for child in node.get_children():
			toggle_unselected_visibility(child, selection)

func hide_unselected(node, selection):
	if (not (node in selection)):
		if "visible" in node:
			node.visible = false;
		for child in node.get_children():
			hide_unselected(child, selection)

func unhide(node):
	if "visible" in node:
		node.visible = true
	for child in node.get_children():
		unhide(child)
