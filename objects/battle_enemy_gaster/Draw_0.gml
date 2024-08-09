/// @description Insert description here
live_auto_call

if (type == 0)
{
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, 2, spr.scale, spr.angle, c_white, image_alpha);
		i ++;
	}
	
}
