live_auto_call

event_inherited();
image_yscale = image_xscale;
var _angle =image_angle%360;
time ++;
if (time == _warnTime)
{
	_canHurt = true;
	//oEnemyLoris.blade(0,0);
	sprite_index = sBlade;
	//cameraShake(10, 5);
	audio_stop_sound(snd_damage);
	audio_play_sound(snd_damage,0,0);
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
function MOVING()
{
	return (keyboard_check(vk_left) ||keyboard_check(vk_down) ||keyboard_check(vk_right) ||keyboard_check(vk_up))
}
if (place_meeting(x, y, battle_soul))
{
	event_user(0);
}
//show_debug_message(image_xscale)