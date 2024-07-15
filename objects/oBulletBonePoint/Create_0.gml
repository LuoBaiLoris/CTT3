live_auto_call
follow = true;
event_inherited();
coordSwitch = false;
length = 0;
mask = false;
_sprite_index = sBonePoint;
_canHurt = true;
_color = 0;
_clr0 = 255;
_clr1 = 0;
_clr2 = 0;

function reversal()
{
	x = x + lengthdir_x(length, image_angle);
	y = y + lengthdir_y(length, image_angle);
	angle += 180;
	image_angle += 180;
	angle %= 360;
	image_angle %= 360;
}