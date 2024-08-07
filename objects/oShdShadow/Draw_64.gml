shader_set(shdShadow);
shader_set_uniform_f_array(shader_get_uniform(shdShadow, "s_pos"), [320, 240]);
shader_set_uniform_f(shader_get_uniform(shdShadow, "s_radius"), 400);
shader_set_uniform_f_array(
	shader_get_uniform(shdShadow, "s_col"), 
	[color_get_red(make_color_rgb(red, green, blue)) / 255, 
	color_get_green(make_color_rgb(red, green, blue)) / 255, 
	color_get_blue(make_color_rgb(red, green, blue)) / 255, 1]
);
draw_set_alpha(1);
draw_surface(application_surface, 0, 0);
shader_reset();
