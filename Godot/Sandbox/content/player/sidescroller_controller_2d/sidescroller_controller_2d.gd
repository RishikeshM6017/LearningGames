class_name SidescrollerController2D
extends CharacterBody2D


@export var speed = 200.0
@export var jump_velocity = -200.0

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite: Sprite2D = $Sprite2D

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("action_jump") and is_on_floor():
		velocity.y = jump_velocity

	var direction := Input.get_axis("move_left", "move_right")
	
	if direction:
		velocity.x = direction * speed
		sprite.flip_h = true if direction > 0 else false
		animation_player.play("move")
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		animation_player.play("idle")

	move_and_slide()
