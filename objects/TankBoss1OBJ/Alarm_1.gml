var shoot = rocketShots;
while (shoot > 0){
instance_create_layer(
        PlayerTankOBJ.x + irandom_range(-300, 300),
        PlayerTankOBJ.y + irandom_range(-300, 300),
        "Instances",
        TargetOBJ
    );	
	shoot -= 1;
}
alarm_set(1,180)