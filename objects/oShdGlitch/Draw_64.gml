live_auto_call
shader_set(shdGlitch);
shader_set_uniform_f(shader_get_uniform(shdGlitch,"iResolution"),room_width,room_height);
shader_set_uniform_f(shader_get_uniform(shdGlitch,"iTime"),iTime);
draw_surface_ext(application_surface,0,0, 2, 2, 0, c_white, 1);
shader_reset();