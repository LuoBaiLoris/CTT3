live_auto_call
event_inherited();
image_angle += rotate;
time ++;
if (coordSwitch)
{
	image_angle = center.angle+angle;
}
else
{
	angle = image_angle;

}
//show_debug_message(center.angle)
//show_debug_message(angle)