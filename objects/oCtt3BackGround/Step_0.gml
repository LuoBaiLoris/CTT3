/// @description Insert description here
live_auto_call
time ++;
depth = DEPTH_BATTLE.ENEMY
if time % 3 == 0
{
	var inst = instance_create_depth(irandom(640),irandom(480), depth-1, oSprite);
	inst.sprite_index = s01;
	inst.image_xscale = 5;
	inst.image_yscale = 5;
	inst.gravity = 0.05;
	inst.gravity_direction = point_direction(inst.x, inst.y, 320, 240);
	inst.image_speed = 0.3;
	inst.image_blend = c_purple;
	inst.image_index = irandom(1);
	TweenFire(inst, EaseLinear, "once", false, 0, 60, "image_alpha", 1, 0);
	inst.Set(0, true, 60, 5, 5);
}