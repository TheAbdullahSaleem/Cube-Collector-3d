extends AnimatableBody3D
@onready var parent := $".."
var tiles : float
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		for sibling in parent.get_children():
			if sibling.is_in_group("Tiles"):
				tiles += 1
		if tiles <= 1:
			print("You won")
		else :
			print("Tiles still standing")
