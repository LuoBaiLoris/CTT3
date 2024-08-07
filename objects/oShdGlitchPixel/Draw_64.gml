live_auto_call
shader_set(shdGlitchPixel);
shader_set_uniform_f(shader_get_uniform(shdGlitchPixel,"iResolution"),room_width,room_height);
shader_set_uniform_f(shader_get_uniform(shdGlitchPixel,"iTime"),iTime);
draw_surface(application_surface,0,0);
shader_reset();