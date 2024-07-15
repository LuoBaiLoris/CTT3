live_auto_call
event_inherited();
//image_speed = 1
function MOVING()
{
	return (keyboard_check(vk_left) ||keyboard_check(vk_down) ||keyboard_check(vk_right) ||keyboard_check(vk_up))
}
if (_canHurt)
{

}
switch(_color)
{
	case 0:
		image_blend = c_white;
	break;
	case 1:
		image_blend = make_color_rgb(0, 255, 255);
	break;
	case 2:
		image_blend = make_color_rgb(242, 135, 33);
	break;
}

//show_debug_message(_atDest)
if (_atDest && !animExist(id, "speed") && (speed > 0))
{
	
	if (x < 0 - sprite_width / 2 || x > room_width + sprite_width / 2 || y < 0 - sprite_height / 2 ||y > room_height + sprite_height / 2)
	{
		instance_destroy();
	}
}
sprite_index = (animExist(id, "speed"))? _sprite_index: sNil;
image_xscale = size;
image_yscale = size;