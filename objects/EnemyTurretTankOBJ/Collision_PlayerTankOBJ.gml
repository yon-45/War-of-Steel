x += lengthdir_x(5,other.x)
y += lengthdir_y(5,other.y)
speed = 0;
target_x = x + random_range(-500,500);
target_y = y + random_range(-500,500);
var dir = point_direction(x, y, target_x, target_y);
image_angle = dir;
alarm_set(3,240)
move_range = 40;