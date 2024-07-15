if (live_call()) return live_result;

if(!mask){
	depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
	draw_sprite_ext(sBoneWall,0,x+lengthdir_x(irandom_range(-skv,skv),image_angle),y+lengthdir_y(irandom_range(-skv,skv),image_angle),1,1,image_angle,image_blend,image_alpha);
}else{
	depth=DEPTH_BATTLE.BULLET
	surface_set_target(Battle_GetBoardSurface());{
		draw_sprite_ext(sBoneWall,0,x+lengthdir_x(irandom_range(-skv,skv),image_angle),y+lengthdir_y(irandom_range(-skv,skv),image_angle),1,1,image_angle,image_blend,image_alpha);
	}surface_reset_target();
}

