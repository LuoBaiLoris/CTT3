/// @description Insert description here
live_auto_call

if (type == 0)
{
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, spr.scale, spr.angle, c_white, spr.alpha);
		if (i==0)
		{
			draw_sprite_pos(Spr_CnrP3_Legs1, 0, legs.x0-50, legs.y0-34*2, legs.x0+50, legs.y0-34*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, image_alpha)
		}
		i ++;
	}
	
}
if (type == 1)
{
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, spr.scale, spr.angle, c_white, spr.alpha);
		if (i==0)
		{
			draw_sprite_pos(Spr_CnrP3_Legs1, 0, legs.x0-46, legs.y0-33*2, legs.x0+46, legs.y0-33*2, legs.x1+46, legs.y1, legs.x1-46, legs.y1, image_alpha)
		}
		i ++;
	}
	
}