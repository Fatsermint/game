extends Control


var posy = randf_range(0,576)
var posx = randf_range(0,1075)
var points = 0
var time = 0
var gamegoing = false
var hit = false
@onready var margin_container: MarginContainer = $MarginContainer
@onready var label: Label = $MarginContainer2/Label
@onready var smalltimer: Timer = $MarginContainer/SmallTimer
@onready var window: ColorRect = $Window
@onready var pointslabel: Label = $Window/ClicksLabel/Label
@onready var button: Button = $Window/MarginContainer/Button
@onready var verysmalltimer: Timer = $MarginContainer/VerySmallTimer
@onready var timelabel: Label = $MarginContainer4/TimeLabel
@onready var bigtimer: Timer = $BigTimer

#window

@onready var resultlabel: Label = $Window/ClicksLabel/Label


func _on_back_button_pressed() -> void:
		get_tree().change_scene_to_file("res://control.tscn")



	
func _on_color_rect_mouse_entered() -> void:
	if gamegoing == false and window.visible == false:
		gamegoing = true
		bigtimer.start()
		hit = true
	if gamegoing == true and window.visible ==false:
		margin_container.visible = false
		smalltimer.start()
		verysmalltimer.start()
		points += 1
		print(points)
		label.text = str(points)
		hit = true

func _on_very_small_timer_timeout() -> void:
	if gamegoing == true:
		time = bigtimer.time_left
		timelabel.text = str(snapped(time, 0.1))
	if time <= 0.1:
		gamegoing = false
		smalltimer.start()
		smalltimer.stop()

func _on_big_timer_timeout() -> void:
	mouse_filter = Control.MOUSE_FILTER_STOP
	resultlabel.text ="You Got "+ str(points) + "Points\n In" +"Seconds"
	window.visible = true

func _on_button_pressed() -> void:
	window.visible = false
	get_tree().reload_current_scene()


func _on_small_timer_timeout():
		posy = randf_range(0,576)
		posx = randf_range(0,1075)
		print("KARHU")
		margin_container.position = Vector2(posx, posy)
		margin_container.visible = true
		print(posx, posy)
