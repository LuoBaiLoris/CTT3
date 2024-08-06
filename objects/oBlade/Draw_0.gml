live_auto_call
depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
if (time < _warnTime)
{
	draw_sprite_ext(sBladeWarn, 0, x, y, image_xscale/2, image_yscale/2, image_angle, image_blend, image_alpha);
}
else
{
	draw_self();
}
