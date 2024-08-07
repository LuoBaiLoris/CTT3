live_auto_call
shader_set(shdBlur);
shader_set_uniform_f(shader_get_uniform(shdBlur, "radius"), flashback_blur);
shader_set_uniform_f_array(shader_get_uniform(shdBlur, "size"), [660, 500]);
shader_set_uniform_f(shader_get_uniform(shdBlur, "bm_add"), 1);
shader_set_uniform_f(shader_get_uniform(shdBlur,"rd"),shadow_rd);
draw_surface(application_surface,0,0);
shader_reset();

