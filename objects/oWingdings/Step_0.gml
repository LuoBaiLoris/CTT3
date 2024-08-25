/// @description Insert description here
live_auto_call
time ++;
if (time % 5==0)
{
	_string = chr(irandom(128));
}
image_xscale = 7;
image_yscale = 7;


function MOVING()
{
	return (keyboard_check(vk_left) ||keyboard_check(vk_down) ||keyboard_check(vk_right) ||keyboard_check(vk_up))
}

if (place_meeting(x, y, battle_soul))
{
	Player_SetInv(90);
	event_user(15);
}

if (_atDest)
{
	//show_debug_message()
	if (x < 0 - sprite_width / 2 || x > room_width + sprite_width / 2 || y < 0 - sprite_height / 2 ||y > room_height + sprite_height / 2)
	{
		instance_destroy();
	}
}
