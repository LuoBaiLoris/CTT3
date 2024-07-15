if (live_call()) return live_result;
/*
if (surface_exists(global.mask))
{
	surface_set_target(global.mask);
	{
		draw_self()
		//draw_sprite_ext(sBulletTarget, 0, targetmain.x, targetmain.y, targetmain.size, targetmain.size, 0, c_white, targetmain.alpha);
		if (start)
		{
			if (target.alpha < 1)
			{
				//draw_sprite_ext(sBulletTarget, 0, target.x, target.y, 1, 1, 0, c_white, target.alpha);
			}
		}
	}
	surface_reset_target();
}
*/
draw_sprite_ext(sBulletTarget, 0, targetmain.x, targetmain.y, targetmain.size, targetmain.size, 0, c_white, targetmain.alpha);
if (start)
{
	if (target.alpha < 1)
	{
		draw_sprite_ext(sBulletTarget, 0, target.x, target.y, 1, 1, 0, c_white, target.alpha);
	}
}
