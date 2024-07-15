live_auto_call
sprite_index = sGB;
event_inherited();
waitTime = 30;
keepTime = 30;
outTime = 30;
preTime = 30;
_index = 0;
_width = 0;

coordSwitch = true;

center = {x:x,y:y,angle:0};
centerSpd = {x:0,y:0,angle:0};
pos = {x:0,y:0};
posSpd = {x:0,y:0};

_sinTimer = -1;

_canHurt = true;

beam = instance_create_depth(x + lengthdir_x(sprite_width/2, image_angle), y + lengthdir_y(sprite_width/2, image_angle), LAYER.I, oBulletGBBeam);
beam.image_alpha = 0;

frame = -1;

_step = 0;
_stepStart = false;