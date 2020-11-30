extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")

var dialogue = [
	"Welcome to Purple Haze! (Press E to continue)"
	, "You must shoot quickly and accurately in order to survive..."
	, "Shoot the eight hidden targets and defeat the drone before you run out of time!"
	, "Press E to begin."
]


func _ready():
	$AnimationPlayer.play("Idle")
	Dialogue.connect("finished_dialogue", self, "finished")





# warning-ignore:unused_argument
func _on_Area_body_entered(body):
	Dialogue.start_dialogue(dialogue)


# warning-ignore:unused_argument
func _on_Area_body_exited(body):
	Dialogue.hide_dialogue()

func finished():
	get_node("/root/Game/Target_container").show()
	Global.timer = 120
	Global.update_time()
	get_node("/root/Game/UI/Timer").start()
