/// @description Insert description here
live_auto_call
draw_sprite_ext(sPx2c, 0, 320, 240, 640, 480, 0, c_black, 1);
if (time < 1460)
{
	draw_sprite_ext(sPx2c, 0, 320, 240, 640, 480, 0, c_white, 1);
	draw_sprite_ext(sGlowAround, 0, 320, 240, 1, 1, 0, c_black, 0.8);
}
if (time > 1460	)
{
	var i = 0;
	repeat (array_length(array))
	{
		var spr = array[i];
		draw_sprite_ext(spr.sprite, spr.index, spr.x, spr.y, spr.xscale, spr.yscale, spr.angle, spr.blend, spr.alpha);
		i ++;
	}
}