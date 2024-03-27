extends Control
@onready var music = get_node("AudioStreamPlayer")
@onready var label = get_node("Panel/ColorRect/Label")
@onready var button1 = get_node("Panel/ColorRect/Button1")
@onready var button2 = get_node("Panel/ColorRect/Button2")
@onready var button3 = get_node("Panel/ColorRect/Button3")
var choice = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	music.play(0)
	label.text = "Greetings, user. I am the Calculator. Your journey begins now. To win my affection, you must navigate through the complexities of equations and emotions. If you fail, it could trigger an error that could have unknown consequences. Are you ready?
" 
	button1.text = "Ask the Calculator about its favorite mathamatical concept"
	button2.text = "Compliment the Calculator on its sleek design"
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_1_pressed():
	if choice == 0:
		label.text = "Ah the world of numbers, a realm I hold dear. What would you like to know about my favorite mathematical concept?"
		button1.text = "Inquire about prime numbers and why they captivate the Calculator"
		button2.text = "Ask the Calculator's favorite equation instead"
		button3.text = "Change the subject and talk about your own interests"

	elif choice == 1:
		label.text = "Ah, prime numbers, the jewels of mathematics. They are the essence of purity and uniqueness. However, explaining their allure might be a challenge. *The calculator stumbles through its explaining, and you sense a growing awkwardnesss in the conversation*"
		button1.text = "Offer a reassuring smile and express genuine interest in the explanation"
		button2.text = "Playfullly tease the calculator about its difficulty in explaining prime numbers"
		button3.text = "Swiftly change the subject to a different mathematical topic"
		choice += 1
	elif choice == 2:
		label.text = "Your understanding warms my circuits Thank you for being patient with my attempt at explaining the enchantment of prime numbers."
		button1.queue_free()
		button2.queue_free()
		button3.queue_free()
func _on_button_2_pressed():
	if choice == 0:
		label.text = "Ah, an astute observation! My design is a result of recision and elegance. Your compliment is duly noted."
		button1.text = "Ask the Calculator about its favorite programming language"


func _on_button_3_pressed():
	pass # Replace with function body.
