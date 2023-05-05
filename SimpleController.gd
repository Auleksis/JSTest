extends CharacterBody2D


@export var speed = 200


func _physics_process(delta):
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1	
	if Input.is_action_pressed("left"):
		velocity.x -= 1	
	if Input.is_action_pressed("up"):
		velocity.y -= 1	
	if Input.is_action_pressed("down"):
		velocity.y += 1
		
	if Input.is_key_pressed(KEY_F):
		var window = JavaScriptBridge.get_interface("window")
		window.document.write()
		var console = JavaScriptBridge.get_interface("console")
		console.log("sds")
		
	velocity = velocity.normalized() * speed
	
	move_and_slide()
