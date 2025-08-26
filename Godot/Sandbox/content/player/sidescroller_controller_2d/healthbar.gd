extends HBoxContainer

@export_category("Textures")
@export var empty: Texture2D 
@export var half:  Texture2D
@export var full:  Texture2D

@export_category("Progress")
@export var maximum: float = 10.0
@export var step:    float = 0.5
@export var value:   float = maximum

func _ready() -> void:
	#create sprites
	pass

func update(value: float):
	pass
