target_x = PlayerTankOBJ.x + random_range(-300,300);
target_y = PlayerTankOBJ.y + random_range(-300,300);
var dir = point_direction(x, y, target_x, target_y);
image_angle = dir;
alarm_set(3,60)