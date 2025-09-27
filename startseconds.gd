extends MarginContainer


@onready var start: MarginContainer = $"."
@onready var start5: Button = $"ColorRect/5/5s"
@onready var start10: Button = $"ColorRect/10/10s"
@onready var start30: Button = $"ColorRect/30/30s"
@onready var timer: Timer = $"../BigTimer"
@onready var margincontainer: MarginContainer = $"../MarginContainer"

func _ready() -> void:
	margincontainer.visible = false
#5 seconds


func _on_10s_pressed() -> void:
	timer.wait_time = 10
	start.visible = false
	margincontainer.visible = true


func _on_5s_pressed() -> void:
	timer.wait_time = 5
	start.visible = false
	margincontainer.visible = true


func _on_30s_pressed() -> void:
	timer.wait_time = 30
	start.visible = false
	margincontainer.visible = true
