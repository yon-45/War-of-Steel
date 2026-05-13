var shoot = bits;
while (shoot > 0){
instance_create_layer(
        x,
        y,
        "Instances",
        BitsOBJ
    );	
	shoot -= 1;
}
