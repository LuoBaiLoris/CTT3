if (live_call()) return live_result;
event_inherited();
//image_angle = angle+180;
image_xscale = 0.6
image_yscale = 0.6
if (!start)
{
	
	target = 
	{
		x : targetmain.x + lengthdir_x(offset, image_angle),
		y : targetmain.y + lengthdir_y(offset, image_angle),
		alpha : 0,
	};
	
	animCreate(target, "alpha", 1, 2, 0, 0, 1, moveTime, 0);
	animCreate(target, "x", 1, 0, 1, target.x, targetmain.x, moveTime, 0);
	animCreate(target, "y", 1, 0, 1, target.y, targetmain.y, moveTime, 0);
	
	start = true;
	
}
//show_debug_message(moveTime)

if (time == moveTime)
{
	//battle_enemy_sc.shoot()
	//oEnemy19.shoot();
	x = targetmain.x + lengthdir_x(offset, image_angle);
	y = targetmain.y + lengthdir_y(offset, image_angle);

	animCreate(id, "image_alpha", 1, 2, 0, 0, 1, 8, 0);
	animCreate(targetmain, "alpha", 1, 2, 1, 1, 0, 30, 0);
	animCreate(targetmain, "size", ANIM_TWEEN.CIRC, 1, 1, 1, 1.5, 30, 0);
	//cameraShake(15,5, 5);
	direction = image_angle + 180;
	speed = 15;
	gravity = 0.5;
	gravity_direction = direction;
}

if (speed > 30)
{
	
	instance_destroy();	
}

show_debug_message(image_angle)
if (_canHurt)
{

}





