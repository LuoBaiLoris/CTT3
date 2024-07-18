live_auto_call

if (!_gui) 
{
	if (mask)
	{
		if surface_exists(global.mask)
		{
			surface_set_target(global.mask);
			draw_self();
			surface_reset_target();
		}
	}
	else 
	{
		draw_self();
	}
}











