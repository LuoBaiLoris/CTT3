/// @description Insert description here
live_auto_call

if (type == 0)
{
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, 2, spr.angle, c_white, spr.alpha);
		if (i==0)
		{
			draw_sprite_pos(Spr_UkbP3_Legs, 0, legs.x0-50, legs.y0-32*2, legs.x0+50, legs.y0-32*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, 1)
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
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, 2, spr.angle, c_white, spr.alpha);
		if (i==0)
		{
			draw_sprite_pos(Spr_UkbP3_Legs, 0, legs.x0-50, legs.y0-32*2, legs.x0+50, legs.y0-32*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, 1)
		}
		i ++;
	}
	
}
if (type == 2)
{
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, 2, spr.angle, c_white, spr.alpha);
		if (i==0)
		{
			draw_sprite_pos(Spr_UkbP3_Legs, 0, legs.x0-50, legs.y0-32*2, legs.x0+50, legs.y0-32*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, 1)
		}
		i ++;
	}
	
}