extends StaticBody

func die():
	queue_free()
	Global.update_score(15)
