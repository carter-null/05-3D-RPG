extends RigidBody


func damage():
	Global.update_score(-5)
	get_node("/root/Game/UI").add_damage(0.5)

