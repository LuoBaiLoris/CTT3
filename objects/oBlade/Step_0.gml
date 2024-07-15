live_auto_call
event_inherited();
image_yscale = image_xscale;
var _angle =image_angle%360;

if (time == _warnTime)
{
	//oEnemyLoris.blade(0,0);
	sprite_index = sBlade;
	//cameraShake(10, 5);
	animCreate(id, "image_xscale", 0, 0, 1, image_xscale, 0, 15, 5);
	animCreate(id, "image_alpha", 0, 0, 1, image_alpha, 0, 15, 5);
}
if (time > _warnTime)
{
	sprite_index = sBlade;
	if (_canHurt)
	{

	}
}
if (image_alpha <= 0)
{
	instance_destroy();
}
//show_debug_message(image_xscale)