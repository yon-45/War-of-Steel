state = ObjectStates.aiming;
var dir = point_direction(x, y, PlayerTurretOBJ.x, PlayerTurretOBJ.y);
image_angle = dir;
alarm[0] = choose(30,45);