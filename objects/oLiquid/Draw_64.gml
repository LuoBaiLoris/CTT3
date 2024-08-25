
shader_set(shdLiquid); 
shader_set_uniform_f(time_uniform,current_time/1000); 
shader_set_uniform_f_array(resolution_uniform,[room_width,room_height]); 
draw_surface(application_surface,0,0); 
shader_reset(); 