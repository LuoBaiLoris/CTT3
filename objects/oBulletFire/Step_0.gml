live_auto_call
event_inherited();
image_speed = 1
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
image_xscale = size;
image_yscale = size;