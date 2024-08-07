shader_set(shdBloom);
shader_set_uniform_f(bloomIntensity, sity);
shader_set_uniform_f(bloomblurSize, sizze);
draw_surface(application_surface, 0, 0);
shader_reset();
