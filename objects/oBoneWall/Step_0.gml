event_inherited();
function MOVING()
{
	return (keyboard_check(vk_left) ||keyboard_check(vk_down) ||keyboard_check(vk_right) ||keyboard_check(vk_up))
}
if (_canHurt)
{

}
var tarClrs = [[255,255,255],[0,255,255],[242,135,33]]

_clr0 = lerp2(_clr0,tarClrs[_color,0], 0.17);
_clr1 = lerp2(_clr1,tarClrs[_color,1], 0.17);
_clr2 = lerp2(_clr2,tarClrs[_color,2], 0.17);

image_blend = make_color_rgb(_clr0, _clr1, _clr2);
