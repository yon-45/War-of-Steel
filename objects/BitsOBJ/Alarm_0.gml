var _b = instance_create_layer(x, y, "Bullets", EvilShellOBJ);
	_b.direction = image_angle;
	_b.image_angle = image_angle;
	_b.speed = 6;
	targetx = PlayerTankOBJ.x + irandom_range(-300, 300);
	targety = PlayerTankOBJ.y + irandom_range(-300, 300);
	state = ObjectStates.follow