extends Node

func _ready():
	connect("pressed", self, "_send")
	
func _send():
	owner._button_clicked(self.name)
