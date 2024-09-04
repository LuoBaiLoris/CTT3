/// @description Insert description here
live_auto_call

if (type == 0)
{
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, spr.scale, spr.angle, c_white, image_alpha);
		i ++;
	}
	
}
if (type == 1)
{

	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		if (i==0)
		{
			draw_sprite_pos(legs.sprite, 0, legs.x0-50, legs.y0-33*2, legs.x0+50, legs.y0-33*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, image_alpha)
		}
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, spr.scale, spr.angle, c_white, image_alpha);

		i ++;
	}
	
}
if (type == 2)
{

	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		if (i==0)
		{
			draw_sprite_pos(legs.sprite, 0, legs.x0-50, legs.y0-33*2, legs.x0+50, legs.y0-33*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, image_alpha)
		}
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, spr.scale, spr.angle, c_white, image_alpha);

		i ++;
	}
	
}