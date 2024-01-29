extends CharacterBody2D
class_name BasicEnemy

@onready var health_component: HealthComponent = $HealthComponent
@onready var visuals: Node2D = $Visuals

const MAX_SPEED = 40


func _process(_delta: float) -> void:
	var direction := get_direction_to_player()
	velocity = direction * MAX_SPEED
	move_and_slide()

	var move_sign: int = sign(velocity.x)
	visuals.scale.x = -move_sign if move_sign else 1


func get_direction_to_player() -> Vector2:
	var player := get_tree().get_first_node_in_group("player") as Player
	if not player:
		push_error("player not found")
		return Vector2.ZERO

	return (player.global_position - global_position).normalized()
