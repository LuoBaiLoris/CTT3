live_auto_call
shader_set(shdLake);
shader_set_uniform_f(shader_get_uniform(shdLake,"iResolution"),room_width*camera.scale_x*2,room_height*camera.scale_x*2);
shader_set_uniform_f(shader_get_uniform(shdLake,"iTime"),current_time/1000);
draw_surface(application_surface,0,0);
shader_reset();