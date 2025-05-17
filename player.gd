extends RigidBody3D

var right = false
var skiAngle: StaticBody3D

func _ready() -> void:
	skiAngle = $"../SkiAngle"

func _process(delta: float) -> void:
	right = Input.is_action_just_pressed("right")


func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	if (right):
		print(skiAngle)
		# I am too tired to figure out why this works, but it does
		skiAngle.global_position = self.global_position + Vector3(-0.8,0,-1)
		skiAngle.global_rotation = self.global_rotation + Vector3(0,deg_to_rad(-10),deg_to_rad(10))
	pass
