extends Control


@onready var colorrect: ColorRect = $MarginContainer2/ColorRect
@onready var timer: Timer = $Timer
@onready var button: Button = $MarginContainer3/Button
@onready var margincontainer3: MarginContainer = $MarginContainer3
@onready var label: Label = $MarginContainer2/ColorRect/Label

var time_elapsed := 0.0
var time = 1 #randfn(1.5, 2)
var notclicked = true
var timetaken = 0
func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://control.tscn")


func _ready():
	timer.wait_time = time
	timer.start()
	print("started")
#delta: float

func _on_timer_timeout() -> void:
	colorrect.color = Color(0.256, 1.161, 0.0, 1.0)
	button.visible = true
	label.text = "Click!"
	print("karhu")
	margincontainer3.visible = true
	#while true:
		#if notclicked == true:
			#time_elapsed += delta
			#print(time_elapsed)
	


func _on_button_pressed() -> void:
	print("hit")
	notclicked = false
	print(time_elapsed)
	
