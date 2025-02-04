@tool
extends EditorScript

func _run():
	var selection := get_editor_interface().get_selection().get_selected_nodes()[0]
	
	for child in selection.get_children():
		var sb = StaticBody3D.new()
		
		sb.name = child.name
		child.name = "MeshInstance3D"
		
		selection.add_child(sb)
		sb.owner = selection
		child.reparent(sb)
