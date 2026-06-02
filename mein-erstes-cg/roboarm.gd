extends Node3D

@export var oberarm_speed : float = 180

func _ready() -> void:
	print("Hallo, ich bin ready!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(delta)
	if Input.is_action_pressed("upper_arm_up"):
		$Arm/Obenarm.rotate_x(deg_to_rad(oberarm_speed) * delta)
	if Input.is_action_pressed("upper_arm_down"):
		$Arm/Obenarm.rotate_x(deg_to_rad(-oberarm_speed) * delta)
