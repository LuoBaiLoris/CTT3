if (live_call()) return live_result;
depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
if (warnTimer > 0) 
{
	if (warnTimer %5 == 0)
	{
		//snd1 = audio_play_sound(snd_credit_s,0,0)
	}
	p = 0;
	draw_sprite_ext(sBoltWarn,index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
}
else 
{
	
	color += 2.8;
	image_blend = make_color_hsv((color % 255), 255, 255);
	
	draw_sprite_ext(sBolt,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(sPx2d,0,x,y,26/2,10000,image_angle,make_color_hsv(255, 0,255),(warnTimer > -5));
}
