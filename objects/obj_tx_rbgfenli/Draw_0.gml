if(!surface_exists(surface)){surface=surface_create(640,480)}

//转绘屏幕到surface上
surface_set_target(surface)
draw_surface(application_surface,0,0)
surface_reset_target()

//挡住底层
draw_set_color(c_black)
draw_rectangle(0,0,640,480,0)
draw_set_color(c_white)

//去黑
gpu_set_blendmode(bm_add)

draw_surface_ext(surface,irandom_range(-scale_x,scale_x),irandom_range(-scale_y,scale_y),1,1,0,c_red,1)
draw_surface_ext(surface,irandom_range(-scale_x,scale_x),irandom_range(-scale_y,scale_y),1,1,0,make_color_rgb(0,255,0),1)
draw_surface_ext(surface,irandom_range(-scale_x,scale_x),irandom_range(-scale_y,scale_y),1,1,0,c_blue,1)

gpu_set_blendmode(bm_normal)