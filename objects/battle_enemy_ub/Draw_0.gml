/// @description Insert description here
live_auto_call


if (type == 0)
{
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		if (i==0)
		{
			draw_sprite_pos(Spr_UbP3_Legs1, 0, legs.x0-50, legs.y0-32*2, legs.x0+50, legs.y0-32*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, image_alpha)
		}
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, 2, spr.angle, c_white, spr.alpha);
		i ++;
	}
	
}
if (type == 1)
{
	draw_sprite_ext(spr_glow, 0, x, y-70, 0.3, 0.2, 0, c_white, 1);
	
	draw_sprite_ext(Spr_Grad, 0, x, y-200, 1, 1.5, 0, c_yellow, _alpha);
	draw_sprite_ext(Spr_Grad, 0, x-160, y-70,1, 1.5, 90, c_yellow, _alpha);
	
	draw_sprite_ext(Spr_Grad, 0, x, y+40, 1, 1.5, 180, c_aqua, _alpha);
	draw_sprite_ext(Spr_Grad, 0, x+160, y-70,1, 1.5, 270, c_aqua, _alpha);

	var i = 0;
	repeat (array_length(squs))
	{
		var spr = squs[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, spr.scale, spr.angle, spr.blend, spr.alpha);
		i ++;
	}	
	
	
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		if (i==1)||(i==4)
		{
			draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale*1.5, 1.5, spr.angle, c_white, spr.alpha);
		}
		else if (i==2)||(i==5)
		{
			draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale*2*1.2, 2*1.2, spr.angle, c_white, spr.alpha);
		}
		else
		{
			draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, 2, spr.angle, c_white, spr.alpha);
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
		if (i==0)
		{
			draw_sprite_pos(Spr_UbP3_Legs1, 0, legs.x0-50, legs.y0-32*2, legs.x0+50, legs.y0-32*2, legs.x1+50, legs.y1, legs.x1-50, legs.y1, image_alpha)
		}
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.scale, 2, spr.angle, c_white, spr.alpha);
		i ++;
	}
	
}