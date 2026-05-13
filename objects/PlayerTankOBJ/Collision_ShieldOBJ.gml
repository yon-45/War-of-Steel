rx = x + choose(-lengthdir_x(recoil,image_angle),lengthdir_x(recoil,image_angle))
ry = y + choose(-lengthdir_y(recoil,image_angle),lengthdir_y(recoil,image_angle))
move_towards_point(rx,ry,recoilSpeed)
alarm_set(1,recoil)