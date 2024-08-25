/// @description Insert description here
live_auto_call
image_angle += rotate;
for(var i = 0;i<number;i++)
{
	var bone = array[i];
	if instance_exists(bone)
	{
		bone.x = x+lengthdir_x(offset, image_angle+i*360/number);
		bone.y = y+lengthdir_y(offset, image_angle+i*360/number);
		bone.image_angle = image_angle+i*360/number+angle;
		bone.length = length;
		bone.mask = mask;
		bone.depth = depth;
	}
}
if !(mask)
{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
}
