live_auto_call
if(!mask){
	depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
	draw_sprite_ext(_sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}else{
	depth=DEPTH_BATTLE.BULLET
	surface_set_target(Battle_GetBoardSurface());{
		draw_sprite_ext(_sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}surface_reset_target();
}




