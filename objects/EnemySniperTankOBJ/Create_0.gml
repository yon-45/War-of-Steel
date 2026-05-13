hp = 100;
maxhp = hp;
rx = 0;
ry = 0;
move = 4;
state = ObjectStates.follow;
dashCoolDown = 0;
target_x = PlayerTankOBJ.x + random_range(-300,300);
target_y = PlayerTankOBJ.y + random_range(-300,300);
move_range = 120;
lilBuddy = instance_create_layer(x,y,"Instances",EnemyTankSniperOBJ);
x0 = -10;
alarm_set(3,240)