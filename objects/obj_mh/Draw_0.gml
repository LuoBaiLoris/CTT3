
shader_set(shdRadialBlur);
shader_set_uniform_f(shader_get_uniform(shdRadialBlur,"bufferRadius"),bufferRadius);
shader_set_uniform_f(shader_get_uniform(shdRadialBlur,"rd"),shadow_rd);
draw_surface(application_surface,0,0);
shader_reset();
/*shader_set(shdShadow);
draw_surface(application_surface,0,0);
shader_reset();*/
