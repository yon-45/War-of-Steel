var dir = point_direction(x, y, PlayerTurretOBJ.x, PlayerTurretOBJ.y);

image_angle = dir;

if (alarm[1] <= 0) {
	var _b = instance_create_layer(x, y, "Bullets", EvilShellOBJ);
	_b.direction = image_angle;
	_b.image_angle = image_angle;
	_b.speed = 6;
	alarm[1] = room_speed * choose(2,3,4);
        }
