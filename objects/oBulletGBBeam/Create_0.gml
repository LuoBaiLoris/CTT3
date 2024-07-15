live_auto_call
sprite_index = sGBBeam
event_inherited();
xscale = 2;
yscale = 2;
waitTime = 30;
keepTime = 30;
outTime = 30;

_index = 0;
_width = 0;

coordSwitch = false;
image_alpha = 1;
image_xscale = 1000;
center = {x:x,y:y,angle:0};
centerSpd = {x:0,y:0,angle:0};
pos = {x:0,y:0};
posSpd = {x:0,y:0};

_sinTimer = -1;

_canHurt = true;