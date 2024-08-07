live_auto_call
shader_set(shdGlitch);
shader_set_uniform_f(shader_get_uniform(shdGlitch,"iResolution"),room_width,room_height);
shader_set_uniform_f(shader_get_uniform(shdGlitch,"iTime"),iTime);
draw_surface(application_surface,0,0);
shader_reset();