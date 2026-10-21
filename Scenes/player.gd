extends CharacterBody3D
var tween : Tween
const SPEED = 5.0
const JUMP_VELOCITY = 4.5


func _physics_process(delta: float) -> void:
	if tween and tween.is_running():
		return
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("forward"):
		animate_z()
	elif Input.is_action_just_pressed("backward"):
		animate_minusz()
	elif Input.is_action_just_pressed("left"):
		animate_x()
	elif Input.is_action_just_pressed("right"):
		animate_minusx()



	move_and_slide()
func animate_z():
	if tween and tween.is_running():
		return
	tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		self,
		"rotation:x",
		rotation.x + deg_to_rad(90.0),
		1
	)
	tween.tween_property(
		self,
		"position:z",
		position.z + 1,
		1
	)
func animate_minusz():
	if tween and tween.is_running():
		return
	tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		self,
		"rotation:x",
		rotation.x - deg_to_rad(90.0),
		1
	)
	tween.tween_property(
		self,
		"position:z",
		position.z - 1,
		1
	)
func animate_x():
	if tween and tween.is_running():
		return
	tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		self,
		"rotation:z",
		rotation.z + deg_to_rad(90.0),
		1
	)
	tween.tween_property(
		self,
		"position:x",
		position.x + 1,
		1
	)
func animate_minusx():
	if tween and tween.is_running():
		return
	tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		self,
		"rotation:z",
		rotation.z - deg_to_rad(90.0),
		1
	)
	tween.tween_property(
		self,
		"position:x",
		position.x - 1,
		1
	)
