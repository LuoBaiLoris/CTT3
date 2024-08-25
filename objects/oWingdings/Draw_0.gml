/// @description Insert description here
live_auto_call
if(!mask){
	depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
	image_blend = c_red
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font_wingdings);
	draw_set_color(c_white);

	draw_text_transformed_color(x, y, _string, 1.5, 1.5, image_angle, c_white,c_white,c_white,c_white, image_alpha);
}else{
	depth=DEPTH_BATTLE.BULLET
	surface_set_target(Battle_GetBoardSurface());{
	image_blend = c_red
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font_wingdings);
	draw_set_color(c_white);

	draw_text_transformed_color(x, y, _string, 1.5, 1.5, image_angle, c_white,c_white,c_white,c_white, image_alpha);
	}surface_reset_target();
}



