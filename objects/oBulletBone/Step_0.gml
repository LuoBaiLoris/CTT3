live_auto_call
event_inherited();

function MOVING()
{
	return (keyboard_check(vk_left) ||keyboard_check(vk_down) ||keyboard_check(vk_right) ||keyboard_check(vk_up))
}

if (place_meeting(x, y, battle_soul))
{
	Player_SetInv(0);
	event_user(0);
}
var tarClrs = [[255,255,255],[0,255,255],[242,135,33]]
var lerpSpd = 1;
_clr0 = lerp2(_clr0,tarClrs[_color,0], lerpSpd);
_clr1 = lerp2(_clr1,tarClrs[_color,1], lerpSpd);
_clr2 = lerp2(_clr2,tarClrs[_color,2], lerpSpd);

image_blend = make_color_rgb(_clr0, _clr1, _clr2);
if (_atDest)
{
	//show_debug_message()
	if (x < 0 - sprite_width / 2 || x > room_width + sprite_width / 2 || y < 0 - sprite_height / 2 ||y > room_height + sprite_height / 2)
	{
		instance_destroy();
	}
}
