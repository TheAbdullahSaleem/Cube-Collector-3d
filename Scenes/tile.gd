extends AnimatableBody3D
@export var falling_speed := 10.0 
var is_falling : bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_falling :
		global_position.y -= falling_speed*delta

func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.name == "Player":
		falling()
	
func falling():
	is_falling = true
	await get_tree().create_timer(1.0).timeout
	queue_free()
