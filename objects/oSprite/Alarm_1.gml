live_auto_call
if (!mask && !_gui)
{
	part_particles_create_color(_partSys, x, y, _partType, image_blend, 1);
	alarm[1] = _shdTime;
}
else if(mask)
{
	//show_debug_message(x)
	var shd = instance_create_depth(x, y, depth+1, oSprite);
	shd.mask = true;
	//shd._alpha_spd = _alpha_spd;
	shd.image_blend = image_blend;
	shd.image_alpha = image_alpha;
	TweenFire(shd, Ease , "once", false, 0, _shdLife, "image_alpha", image_alpha, -image_alpha);
	shd.image_angle = image_angle;
	shd.image_xscale = image_xscale;
	shd.image_yscale = image_yscale;
	shd.image_speed = image_speed;
	shd.sprite_index = sprite_index;
	shd.image_index = image_index;
	shd.depth = depth+1;
	alarm[1] = _shdTime;
}










