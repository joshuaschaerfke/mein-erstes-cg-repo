extends Node3D

@export var oberarm_speed : float = 180

func _ready() -> void:
	print("Hallo, ich bin ready!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(delta)
	if Input.is_action_pressed("arm_right"):
		$Base/Außenplat/Innenplat.rotate_y(deg_to_rad(oberarm_speed) * delta)
	if Input.is_action_pressed("arm_left"):
		$Base/Außenplat/Innenplat.rotate_y(deg_to_rad(-oberarm_speed) * delta)
	if Input.is_action_pressed("upper_arm_up"):
		$Base/Außenplat/Innenplat/Untengel/Oben.rotate_z(deg_to_rad(oberarm_speed) * delta)
	if Input.is_action_pressed("upper_arm_down"):
		$Base/Außenplat/Innenplat/Untengel/Oben.rotate_z(deg_to_rad(-oberarm_speed) * delta)
