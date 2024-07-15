/// @description Insert description here
live_auto_call
_camera_x = x;
_camera_y = y;
_pivot_x =0;
_pivot_y =-0;
_pivot_angle = image_angle+180;
_x = (_camera_x-scale*room_width/2);
_y = (_camera_y-scale*room_height/2);

if(alarm[0] > 0)
{
	_cameraShkAmp -= _cameraShkAmpp/_time;
	_cameraShkAmp = max(0, _cameraShkAmp);
	var x_ = _x + random_range(-_cameraShkAmp,_cameraShkAmp);
	var y_ = _y + random_range(-_cameraShkAmp,_cameraShkAmp);
	camera_set_view_pos(_camera, x_, y_);
}
else
{
	camera_set_view_pos(_camera,_x,_y);
}
x = 320+sin(current_time*0.05)*10
camera_set_view_size(_camera, view_wport[0]*scale, view_hport[0]*scale);
camera_set_view_angle(_camera, image_angle);
