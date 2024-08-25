/// @description Insert description here
live_auto_call
if(!surface_exists(surface)){surface=surface_create(640,480)}

//转绘屏幕到surface上
surface_set_target(surface)
draw_surface(application_surface,0,0)
surface_reset_target()

//挡住底层
draw_set_color(c_black)
draw_rectangle(0,0,640,480,0)
draw_set_color(c_white)

timer+=0.1


var dx,dy
for(i=0;i<=480;i++)
{
	dy=i
	dx=sin(i*scaley+timer)*scalex
	draw_surface_part(surface,0,i,640,1,dx,dy)
}