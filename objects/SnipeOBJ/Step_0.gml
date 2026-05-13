var dir = point_direction(x, y, PlayerTurretOBJ.x, PlayerTurretOBJ.y);

image_angle = dir;
x = x;
if (alarm[1] <= 0) {
	var _b = instance_create_layer(x, y, "Bullets", EvilPiercingOBJ);
	_b.direction = image_angle;
	_b.image_angle = image_angle;
	_b.speed = 15;
	alarm[1] = room_speed * 9; //fires every 9 seconds;
        }

if (hp <= 0){
	ControllerOBJ.enemy_count -=1;
	instance_destroy();	
}