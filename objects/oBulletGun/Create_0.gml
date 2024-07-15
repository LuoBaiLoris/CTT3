if (live_call()) return live_result;
event_inherited();
time = -1;
sprite_index = sBullet;
type=0;
auto_destroy = 0;
targetmain = 
{
	x : x,
	y : y,
	angle : 0,
	alpha : 0,
	size : 1
};

animCreate(targetmain, "alpha", 1, 2, 0, 0, 1, 30, 0);
moveTime = 30;
offset = 60;
angle = 0;
start = false;
phase = 0;
_canHurt = true;






