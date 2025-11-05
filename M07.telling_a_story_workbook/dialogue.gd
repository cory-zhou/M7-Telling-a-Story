extends Control

@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var button: Button = %Button

var dialogue_items: Array [String] = [
	"I'm learning about Arrays...",
	"...and it is a little bit complicated.",
	"Let's see if I got it right: an array is a list of values!",
	"Did I get it right? Did I?",
	"Hehe! Bye bye~!"
]
var current_item_index := 0

var charater_name:String = "Sophia"

var letters_list := ["a", "b", "c"]

func _ready() -> void:
	letters_list.append(15)
	show_text()

var lettr:String = letters_list[0]

func show_text()-> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item

func advance() -> void:

	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().quit()
	else:
		show_text()
