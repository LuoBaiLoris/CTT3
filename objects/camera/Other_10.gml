///@desc Reset
live_auto_call
//Camera_Reset()
Anim_Destroy(self)
x=0
y=0
width=640
height=480
scale_x=1
scale_y=1
angle=0
target=noone

shake_x=0;
shake_y=0;
shake_speed_x=0;
shake_speed_y=0;
shake_random_x=false;
shake_random_y=false;
shake_decrease_x=-1;
shake_decrease_y=-1;
_shake_pos_x=0;
_shake_pos_y=0;
_shake_time_x=0;
_shake_time_y=0;
_shake_positive_x=true;
_shake_positive_y=true;


////////////////////////////////////////
/*
scale = 1;
_cameraShkAmp = 0;
_cameraShkAmpp = 0;
angle = 0;

_time = 0;
_camera = view_camera[0];
view_enabled = true;
view_set_visible(0, true);
_pivot_x = 0;
_pivot_y = 0;
_pivot_angle = 0;

view_set_camera(0, _camera);
