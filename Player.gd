extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
<<<<<<< HEAD
const JUMP_HEIGHT = -500
=======
const JUMP_HEIGHT = -645
>>>>>>> d29b77740bf7ce1abd0763e20f1fecec7f0573fc

var motion = Vector2()

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
<<<<<<< HEAD
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	else:
=======
		motion.x = SPEED
		$Sprite.flip_h = false
		$Sprite.play("Walk")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$Sprite.flip_h = true
		$Sprite.play("Walk")
	else:
		$Sprite.play("Idle")
>>>>>>> d29b77740bf7ce1abd0763e20f1fecec7f0573fc
		motion.x = 0
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	
	motion = move_and_slide(motion, UP)
	pass
