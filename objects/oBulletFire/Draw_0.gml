live_auto_call

if mask
{
	if (surface_exists(global.mask))
	{
		surface_set_target(global.mask)
		draw_sprite_ext(_sprite_index, image_index, x, y, image_xscale, image_yscale, angle, image_blend, image_alpha);
		surface_reset_target()
	}
	
}	
else draw_sprite_ext(_sprite_index, image_index, x, y, image_xscale, image_yscale, angle, image_blend, image_alpha);




