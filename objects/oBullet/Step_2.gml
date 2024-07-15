live_auto_call

if (coordSwitch)
{

	angle += rotate;
	center.x += centerSpd.x;
	center.y += centerSpd.y;
	center.angle += centerSpd.angle	;
	pos.x += posSpd.x;
	pos.y += posSpd.y;
	var _x = center.x + lengthdir_x(pos.x, center.angle);
	var _y = center.y + lengthdir_y(pos.x, center.angle);
	var __x = _x +	lengthdir_x(pos.y, center.angle+90);
	var __y = _y + lengthdir_y(pos.y, center.angle+90);
	x = __x;
	y = __y;
	
}
if (coordSwitch)
{
	image_angle = center.angle+angle;
}
else
{
	angle = image_angle;

}


