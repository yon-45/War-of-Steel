draw_self()
draw_set_color(c_green)
draw_rectangle(x-32,y+70,x -32 + clamp(((hp/maxhp) * 100),0,100),y+74,false)
draw_set_color(c_white)