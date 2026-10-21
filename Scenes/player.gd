extends CharacterBody3D
@export var anim_player : AnimationPlayer

const SPEED = 5.0
const JUMP_VELOCITY = 4.5


func _physics_process(delta: float) -> void:

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		animate()
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	#if direction:
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
func animate():
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		self,
		"rotation_degrees:x",
		rotation_degrees.x + 90.0,
		1
	)
	tween.tween_property(
		self,
		"position:z",
		position.z + 1,
		1
	)
