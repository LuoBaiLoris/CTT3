live_auto_call
event_inherited();
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
if (_shd)
{
	if (1)
	{
		///*
		var inst = instance_create_depth(x, y, depth+1, oBulletStarShd);
		animCreate(inst, "image_alpha", 0, 0, 1, image_alpha, 0, 15);
		inst.alarm[0] = 15;
		inst.image_angle = image_angle;
		inst.image_blend = image_blend;
		inst.image_xscale = image_xscale;
		inst.image_yscale = image_yscale;
		inst.mask = mask;
		//*/
	}
}