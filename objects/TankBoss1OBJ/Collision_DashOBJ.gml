if (dashCoolDown <= 0){
hp-=20;
}

dashCoolDown = 30;
state = ObjectStates.stunned;
alarm_set(2,90);