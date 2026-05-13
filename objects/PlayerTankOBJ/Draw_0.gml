draw_self()
draw_set_color(c_green)
draw_rectangle(x-52,y+40,x -52 + clamp(((hp/maxhp) * 100),0,100),y+44,false)
draw_set_color(c_white)