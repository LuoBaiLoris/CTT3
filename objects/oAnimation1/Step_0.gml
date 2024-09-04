/// @description Insert description here
live_auto_call


depth = DEPTH_UI.GAME;
time = GetTimer(); //battle_turn_test0.timer
bpm = 126;
var beat = bpm / 60;
//show_debug_message(beat)
if (keyboard_check_pressed(ord("A")))
{

	with(battle_enemy_ub)
	{
		var i = 0;
		repeat(8)
		{
			var squ = squs[i];
			squ.alpha = 0;
			squ.scale = 0;
			i ++;
		}
		_len = 100;
		time = -1
		_start = false;
		anim0.index = 0;
	}
	SetTimer(3910);
	battle_enemy_ukb.arm1.index = 0;
	
	battle_enemy_cotv.cnrSoul.alpha = 0;
	battle_enemy_cotv.cnrLost.alpha = 0;
	battle_enemy_ukb.x = -1000;
	battle_enemy_ub.x = -1000;
	battle_enemy_ukb.y = -1000;
	battle_enemy_ub.y = -1000;
	battle_enemy_cotv.x = -1000;
	battle_enemy_cnr.x = -1000;
	battle_enemy_cotv.y = -1000;
	battle_enemy_cnr.y = -1000;
	TweenDestroy(all);
	Anim_Destroy(all);
	camera.scale_x = 1;
	camera.scale_y = 1;
	x = 0;
	y = 0;
	camera.x = 0;
	camera.y = 0;
	camera.target = noone;
	instance_destroy(oText);
	instance_destroy(oSprite);
	fader.color = c_white;
	
}
if (0)
{
	ring = instance_create_depth(320,240,depth-100000, oSprite);
	ring.sprite_index = sRing;
	ring.alarm[0] = 40;
	ring.image_blend = c_white;
	ring.image_xscale = 0.6;
	ring.image_yscale = 0.6;
}
if (time == 0)
{
	battle_enemy_cotv.cnrSoul.alpha = 0;
	battle_enemy_cotv.cnrLost.alpha = 0;
	battle_enemy_ukb.x = -1000;
	battle_enemy_ub.x = -1000;
	battle_enemy_ukb.y = -1000;
	battle_enemy_ub.y = -1000;
	battle_enemy_cotv.x = -1000;
	battle_enemy_cnr.x = -1000;
	battle_enemy_cotv.y = -1000;
	battle_enemy_cnr.y = -1000;
	battle_enemy_ukb.type = 0;
	battle_enemy_ub.type = 0;
	battle_enemy_cotv.type = 0;
	battle_enemy_cnr.type = 0;
	TweenDestroy(all);
	camera.scale_x = 1;
	camera.scale_y = 1;
	x = 0;
	y = 0;
	camera.x = 0;
	camera.y = 0;
	camera.target = noone;
	instance_destroy(oText);
	instance_destroy(oSprite);
	
	
	//white = 
	//fader.color = c_white;
	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* well, kid...you're...uh, a determined little freak...aren't cha?"
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
	Fader_Fade(1,0, 60);
	TweenFire(fader, EaseInSine, "once", false, 180+0, 30, "alpha", 0, 0.5);
	TweenFire(fader, EaseOutSine, "once", false, 180+30, 30, "alpha", 0.5, 0);
}
if (time == 200)
{
	instance_destroy(dialog);
	//white = 
	//fader.color = c_white;
	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* it's just kidda hard to imagine you've come that so far..."
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
	TweenFire(fader, EaseInSine, "once", false, 180+0, 30, "alpha", 0, 0.5);
	TweenFire(fader, EaseOutSine, "once", false, 180+30, 30, "alpha", 0.5, 0);
}
if (time == 400)
{
	instance_destroy(dialog);
	//white = 
	//fader.color = c_white;
	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* but it will also be hard for you to expect..."
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
		TweenFire(fader, EaseInSine, "once", false, 180+0, 30, "alpha", 0, 0.5);
	TweenFire(fader, EaseOutSine, "once", false, 180+30, 30, "alpha", 0.5, 0);
}
if (time == 600)
{
	instance_destroy(dialog);
	//white = 
	//fader.color = c_white;
	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* the GOOD KARMA stands by my side, while the BAD KARMA is the thing you could never redeem for."
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
		TweenFire(fader, EaseInSine, "once", false, 180+0, 30, "alpha", 0, 0.5);
	TweenFire(fader, EaseOutSine, "once", false, 180+30, 30, "alpha", 0.5, 0);
}
if (time == 800)
{
	instance_destroy(dialog);
	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* heh... another hit... familiar to you, huh?"
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
		TweenFire(fader, EaseInSine, "once", false, 180+0, 30, "alpha", 0, 0.5);
	TweenFire(fader, EaseOutSine, "once", false, 180+30, 30, "alpha", 0.5, 0);
}
if (time == 1000)
{
	instance_destroy(dialog);
	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* so is it to me, you murderer."
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
	TweenFire(fader, EaseInSine, "once", false, 180+0, 30, "alpha", 0, 0.5);
	TweenFire(fader, EaseOutSine, "once", false, 180+30, 30, "alpha", 0.5, 0);
}
if (time == 1200)
{
	instance_destroy(dialog);
	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* the plan has to go on now, we've still go on more repulse..."
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
}
if (time == 1350)
{

	dialog=instance_create_depth(320, 240+280, depth-1, oText);
	dialog.text="* we FIVE, will make the judgement of your sins!"
	TweenFire(dialog, EaseOutBack, "once", false, 0, 90, "y", 240+480, 240+90);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_xscale", 4, 3);
	TweenFire(dialog, EaseOutSine, "once", false, 0, 90, "image_yscale", 4, 3);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 60, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 60, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 60, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 60, "image_alpha", 1, 0);
}

if (time == 1400)
{

	fader.color = c_white;
	TweenFire(fader, EaseInSine, "once", false, 0, 60, "alpha", 0, 1);
	TweenFire(fader, EaseLinear, "once", false, 60, 60, "alpha", 1, 0);
}
//fader.alpha = 0
if (time == 1460)
{
	dtm0.sprite = Spr_DTM_Bomb1;
	dtm0.alpha = 1;
	array = [glow0, dtm0, black0,black1, line0, line1];

	line0.angle = 0;
	instance_destroy(oText);
	line0.alpha = 1;
	line1.alpha = 1;
	TweenFire(line0, EaseOutCirc, "once", false, 0, 30, "y", 480+640*2, 240);
	TweenFire(line0, EaseInExpo, "once", false, 30, 70, "angle", 0, 360*1-90);
}
if (time == 1460)
{
	camera.angle = 0;
	_color0 = 139;
	_color1 = 92;
	_color2 = 25;
	TweenFire(id, EaseLinear, "once", false, 0, 2300-1460, "_color0", _color0, 255);
	TweenFire(id, EaseLinear, "once", false, 0, 2300-1460, "_color1", _color1, 153);
	TweenFire(id, EaseLinear, "once", false, 0, 2300-1460, "_color2", _color2, 156);
}

if (time == 1560)
{
	line0.alpha = 0;
	line1.alpha = 0;
	array = [glow0, dtm0,dtm1,white0, black0,black1, line0, line1];
	
	TweenFire(dtm0, EaseLinear, "once", false, 0, 1950-1560, "index", 0, 7);
	TweenFire(white0, EaseLinear, "once", false, 0, 120, "alpha", 1, 0);
	
	
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, 140, "y", 240-120, 240-40);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", -10, 0);
	
	dtm1.x = dtm0.x;
	dtm1.y = dtm0.y;
	dtm1.index = dtm0.index;
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "xscale", 2, 4);
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "yscale", 2, 4);
	TweenFire(dtm1, EaseOutSine, "once", false, 0, 60, "alpha", 1, 0);
	
}

if (time == 1760)
{
	TweenFire(white0, EaseLinear, "once", false, 0, 60, "alpha", 1, 0);
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240-40, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, 140, "y", 240-120, 240-40);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", 10, 0);
	
	dtm1.x = dtm0.x;
	dtm1.y = dtm0.y;
	dtm1.index = dtm0.index;
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "xscale", 2, 4);
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "yscale", 2, 4);
	TweenFire(dtm1, EaseOutSine, "once", false, 0, 60, "alpha", 1, 0);
}
if (time == 1955)
{
	TweenFire(white0, EaseLinear, "once", false, 0, 60, "alpha", 1, 0);
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240-40, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, (1955-1760-60), "y", 240-120, 240-40);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", -10, 0);
	
	dtm1.x = dtm0.x;
	dtm1.y = dtm0.y;
	dtm1.index = dtm0.index;
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "xscale", 2, 4);
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "yscale", 2, 4);
	TweenFire(dtm1, EaseOutSine, "once", false, 0, 60, "alpha", 1, 0);
}
if (time == 2150)
{
	TweenFire(white0, EaseLinear, "once", false, 0, 60, "alpha", 1, 0);
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240-40, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, (2150-1955-60), "y", 240-120, 240);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", 10, 0);
	
	dtm1.x = dtm0.x;
	dtm1.y = dtm0.y;
	dtm1.index = dtm0.index;
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "xscale", 2, 4);
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "yscale", 2, 4);
	TweenFire(dtm1, EaseOutSine, "once", false, 0, 60, "alpha", 1, 0);
	
}
if (time == 2150)
{
	camera.target = id;
	TweenFire(dtm0, EaseLinear, "once", false, 0, 2230-2150, "index", 7, 15);
	TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "scale_x", 1, 2);
	TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "scale_y", 1, 2);
	
	TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "x", 0, 640/4);
	TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "y", 0, 480/4);
}
if (time == 2240)
{
	dtm1.x = dtm0.x;
	dtm1.y = dtm0.y;
	dtm1.index = dtm0.index;
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "xscale", 2, 3);
	TweenFire(dtm1, EaseOutCirc, "once", false, 0, 60, "yscale", 2, 3);
	TweenFire(dtm1, EaseOutSine, "once", false, 0, 60, "alpha", 1, 0);
	dtm1.blend = c_red;
}
if (time == 2300)
{
	dtm0.sprite = Spr_DTM_Bomb2;
	TweenFire(white0, EaseLinear, "once", false, 0, 30, "alpha", 0, 1);
}
if (time == 2290)
{
	TweenFire(camera, EaseInSine, "once", false, 0, 10, "scale_x", 2, 3);
	TweenFire(camera, EaseInSine, "once", false, 0, 10, "scale_y", 2, 3);
}
if (time == 2300)
{
	TweenFire(camera, EaseOutCirc, "once", false, 0, 30, "scale_x", 3, 2);
	TweenFire(camera, EaseOutCirc, "once", false, 0, 30, "scale_y", 3, 2);
}

if (inRange(time, 1560,2350))
{
	dtm0.alpha = 1;
	line1.y = 480-line0.y;
	line1.angle = 180-line0.angle;
	black0.x = line0.x;
	black0.y = line0.y;
	black0.angle = line0.angle+90;
	
	black1.x = line1.x;
	black1.y = line1.y;
	black1.angle = line1.angle-90;
	
	dtm0.x = 320;
	dtm0.y = 240-40;
/////////////////////////////////////////////
	glow0.blend = make_color_rgb(_color0, _color1, _color2);
	glow0.x = 320-100;
	glow0.y = 240-100;
	glow0.xscale = 1;
	glow0.yscale = 1;
	glow0.alpha = 1;

	Camera_Shake(3,3,0.1,0.1,1,1)
}
if (inRange(time, 2150,2350))
{
	id.x = 320+irandom_range(-3,3);
	id.y = 240+irandom_range(-3,3);
}


if (time < 1460+60)
{
	dtm0.alpha = 0;
}
if (time < 1460)
{
	glow0.alpha = 0;
	line0 =		
	{
		x : 320,
		y : 480+640*2,
		angle : 180,
		xscale : 2,
		yscale : 640,
		index : 0, 
		sprite : sPx2c,
		alpha : 1,
		blend : c_white
	}
	line1 = 
	{
		x : 320,
		y : 480+640*2,
		angle : 180,
		xscale : 2,
		yscale : 640,
		index : 0, 
		sprite : sPx2c,
		alpha : 1,
		blend : c_white
	}
	camera.angle = cos(time*0.05)*1.5;

}
if (inRange(time, 2350,2750))
{

	glow0.xscale = 0.25;
	glow0.yscale = 0.25;
	glow1.xscale = 0.25;
	glow1.yscale = 0.25;
	glow0.blend = c_purple;
	glow1.blend = c_blue;
	glow0.x = 320-80;
	glow0.y = 240;
	glow1.x = 320+80;
	glow1.y = 240;
	line0.xscale = 1;
	line1.xscale = 1;
	var spd = 0.015;
	battle_enemy_ub.depth = depth-1
	battle_enemy_ukb.depth = depth-1
	battle_enemy_cotv.depth = depth-1
	battle_enemy_cnr.depth = depth-1
	camera.angle = -sin((time-2350)*spd+24/25)*(360+30)-15;
}
if (time == 2350)
{
	glow0.alpha = 0;
	glow1.alpha = 0;
	battle_enemy_ukb.x = -1000;
	battle_enemy_ub.x = -1000;
	battle_enemy_ukb.y = -1000;
	battle_enemy_ub.y = -1000;
	battle_enemy_cotv.x = -1000;
	battle_enemy_cnr.x = -1000;
	battle_enemy_cotv.y = -1000;
	battle_enemy_cnr.y = -1000;
	battle_enemy_ub.type = 0;
	battle_enemy_ub.depth = battle_enemy_ukb.depth;
	array = [glow0, glow1, line0,line1];
	_glowAround = instance_create_depth(320,240,depth-100000, oSprite);
	_glowAround.sprite_index = sGlowAround;
	_glowAround.image_blend = c_black;
	_glowAround.image_xscale = 0.6;
	_glowAround.image_yscale = 0.6;
	line0.alpha = 1;
	line1.alpha = 1;
	line0.x = 320;
	line1.x = 320;
	line0.y = 240;
	line1.y = 240;
	line0.angle = 90;
	line1.angle = 90;
	camera.target = id;
	x = 320;
	y = 240;
	camera.angle = 0;
	camera.scale_x = 2;
	camera.scale_y = 2;
	
	TweenFire(glow1, EaseOutSine, "once", false, 0, 90, "alpha", 0, 1);
	TweenFire(glow1, EaseOutSine, "once", false, 90, 90, "alpha", 1, 0);
	TweenFire(line0, EaseOutSine, "once", false, 0, 90, "x", line0.x, 320+160);

	TweenFire(line0, EaseOutCirc, "once", false, 0, 90, "angle", 90, 0);
	
	TweenFire(line1, EaseOutSine, "once", false, 0, 90, "x", line1.x, 320);
	TweenFire(line1, EaseOutCirc, "once", false, 0, 90, "angle", 90, 0);
	TweenFire(line1, EaseInCirc, "once", false, 0, 90, "alpha", 1, 0);
	battle_enemy_ub.y = 320+30;
	TweenFire(battle_enemy_ub, EaseOutSine, "once", false, 0, 90, "x", -90, 320+160);
	TweenFire(battle_enemy_ub, EaseInSine, "once", false, 90, 90, "y", battle_enemy_ub.y, battle_enemy_ub.y+640);
	//TweenFire(camera, EaseOutSine, "once", false, 0, 90, "angle", 0, -15);
}
if (time == 2440)
{
	TweenFire(line0, EaseLinear, "once", false, 0, 90, "x", line0.x, 320);
	TweenFire(line1, EaseLinear, "once", false, 0, 90, "x", line1.x, 320);
	TweenFire(line0, EaseLinear, "once", false, 0, 90, "angle", line0.angle, 90*5);
	TweenFire(line1, EaseLinear, "once", false, 0, 90, "angle", line1.angle, 90);
	//TweenFire(camera, EaseInOutSine, "once", false, 0, 90, "angle", -15, 360*1);
}
if (time == 2530)
{
	battle_enemy_cotv.anim0.alpha = 1;
	TweenFire(glow0, EaseOutSine, "once", false, 0, 90, "alpha", 0, 1);
	TweenFire(glow0, EaseOutSine, "once", false, 90, 90, "alpha", 1, 0);
	battle_enemy_ukb.y = 320+30;
	battle_enemy_ukb.head.index = 31;
	TweenFire(battle_enemy_ukb, EaseOutSine, "once", false, 0, 90, "x", 640+90, 320-160);
	TweenFire(battle_enemy_ukb, EaseInSine, "once", false, 90, 90, "y", battle_enemy_ukb.y, battle_enemy_ukb.y+640);
	TweenFire(line0, EaseOutSine, "once", false, 0, 90, "x", line0.x, 320-160);
	TweenFire(line0, EaseOutCirc, "once", false, 0, 90, "angle", -90, 0);
	
	TweenFire(line1, EaseOutSine, "once", false, 0, 90, "x", line1.x, 320);
	TweenFire(line1, EaseOutCirc, "once", false, 0, 90, "angle", -90, 0);
	TweenFire(line1, EaseOutCirc, "once", false, 0, 90, "alpha", 1, 0);
	
	
	TweenFire(line0, EaseLinear, "once", false, 90, 90, "x", 320-160, 320);
	TweenFire(line0, EaseLinear, "once", false, 90, 90, "angle", 0, -90*5);
	
	TweenFire(line0, EaseOutCirc, "once", false, 180, 90, "alpha", 1, 0);
	//TweenFire(camera, EaseOutSine, "once", fals	e, 0, 90, "angle", 0, 15);
}
if (time == 2750)
{
	battle_enemy_cotv.type = 0;
	battle_enemy_cotv.cnrSoul.alpha = 1;
	battle_enemy_cotv.x = 320;
	battle_enemy_cotv.anim0.index = 0;
	TweenFire(battle_enemy_cotv, EaseOutSine, "once", false, 0, 80, "y", 480+80, 240+120);
	glow0.x = 320;
	glow0.y = 240;
	glow0.blend = c_red;
	glow0.xscale = 2;
	glow0.yscale = 0.5;
	TweenFire(camera, EaseOutSine, "once", false, 0, 40, "angle", camera.angle, -360);
	TweenFire(glow0, EaseOutSine, "once", false, 0, 80, "alpha", 0, 0.5);
	TweenFire(_glowAround, EaseOutSine, "once", false, 0, 80, "image_xscale", 2, 1);
	TweenFire(_glowAround, EaseOutSine, "once", false, 0, 80, "image_yscale", 2, 0.5);
	TweenFire(camera, EaseOutSine, "once", false, 0, 80, "scale_x", 2, 1);
	TweenFire(camera, EaseOutSine, "once", false, 0, 80, "scale_y", 2, 1);
	battle_enemy_cotv.cnrSoul.y = -60;
	battle_enemy_cotv.cnrSoul.x = 320+50;
	TweenFire(battle_enemy_cotv.cnrSoul, EaseOutBack, "once", false, 80, 80, "y", -60, 320-100);
}
if (time == 2930)
{
	battle_enemy_cotv.type = 0;
	TweenFire(battle_enemy_cotv.anim0, EaseLinear, "once", false, 0, 40, "index", 1, 13);
	TweenFire(battle_enemy_cotv.cnrSoul, EaseLinear, "once", false, 0, 40, "index", 0, 5);
	
}
if (time == 2930)
{
	camera.target = id;
	x = 320;
	y = 240;
	//TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "scale_x", 1, 2);
	//TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "scale_y", 1, 2);

	TweenFire(camera, EaseInCirc, "once", false, 0, 20, "scale_x", 1, 1.5);
	TweenFire(camera, EaseInCirc, "once", false, 0, 20, "scale_y", 1, 1.5);

	TweenFire(camera, EaseOutCirc, "once", false, 20, 40, "scale_x", 1.5, 1);
	TweenFire(camera, EaseOutCirc, "once", false, 20, 40, "scale_y", 1.5, 1);


}
if (time == 3030)
{

	camera.target = id;
	x = 320;
	y = 240;
	TweenFire(battle_enemy_cotv.cnrSoul, EaseOutCirc, "once", false, 0, 60, "x", battle_enemy_cotv.cnrSoul.x, 320);
	TweenFire(battle_enemy_cotv.cnrSoul, EaseOutCirc, "once", false, 0, 60, "y", battle_enemy_cotv.cnrSoul.y, 240);
	TweenFire(battle_enemy_cotv.anim0, EaseOutCirc, "once", false, 0, 40, "alpha", 1, 0);
	TweenFire(battle_enemy_cotv.cnrLost, EaseOutCirc, "once", false, 40, 60, "alpha", 0, 1);
	TweenFire(camera, EaseInCirc, "once", false, 40, 60, "scale_x", 1, 3);
	TweenFire(camera, EaseInCirc, "once", false, 40, 60, "scale_y", 1, 3);
	fader.color = c_white;
	Fader_Fade(0, 1, 60, 40);
	//Fader_Fade(1, 0, 40, 60);
	battle_enemy_cotv.cnrLost.x = battle_enemy_cotv.x;
	battle_enemy_cotv.cnrLost.y = battle_enemy_cotv.y-30;
}

if (time == 2910)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nC\nh\na\no\nt\ni\nc"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 2920)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nT\ni\nm\ne"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 2930)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nT\nr\ni\no"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 2940)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nL\no\nr\ni\ns \nl\no\nv\ne \nC\nC"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 2950)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nC\na\nl\nl\n \no\nf\n \nt\nh\ne\n \nV\no\ni\nd"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 2960)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nB\ne\nt\nr\na\ny\ne\nr"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 2970)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nK\na\nr\nm\na\n'\ns\n \na\n \nB\ni\nt\nc\nh"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 2980)
{
	dialog=instance_create_depth(320+irandom_range(-220,220), 240, depth-1, oText);
	dialog.text="\nCry \ni\nn\n \nT\nh\ne\n \nR\na\ni\nn"
	dialog._valign = fa_top;
	dialog._color = c_red;
	dialog._font=font_wingdings;
	dialog._length=30;
	TweenFire(dialog, EaseLinear, "once", false, 0, 60, "y", 480, -160);
}
if (time == 3130)
{
	battle_enemy_cnr.type = 0;
	camera.target = id;
	x = 320;
	y = 240;
	array = [];
	battle_enemy_cotv.cnrLost.alpha = 0;
	battle_enemy_cotv.cnrSoul.alpha = 0;
	//Fader_Fade(1, 0, 60, 0);
	camera.scale_x = 2;
	camera.scale_y = 2;
	battle_enemy_cnr.x = 320;
	battle_enemy_cnr.y = 240+120;
	instance_destroy(oText);
	
	
	TweenFire(fader, EaseLinear, "once", false, 0, 60, "alpha", 1, 0);
	TweenFire(battle_enemy_cnr, EaseLinear, "once", false, 0, 160, "x", 320, 320-80);
}
if (time == 3220)
{
	fader.color = c_black;
	Fader_Fade(0, 1 , 30, 0);
}
if (time == 3175)	
{
	ring = instance_create_depth(battle_enemy_cnr.x,275,depth-100000, oSprite);
	ring.sprite_index = sRing;
	ring.alarm[0] = 40;
	ring.image_blend = c_white;
	ring.image_xscale = 0.4;
	ring.image_yscale = 0.4;
}
if (time == 3260)
{
	//Fader_Fade(1, 0, 60, 0);
	battle_enemy_cnr.x = 320;
}
if (time == 3320)
{
	battle_enemy_cnr. type = 1
	Fader_Fade(1, 0, 60, 0);
	battle_enemy_cnr.x = 320;
	TweenFire(battle_enemy_cnr, EaseLinear, "once", false, 0, 160, "x", 320, 320+80);
	
	//Fader_Fade(0, 1 , 30, 90);
}
if (time == 3371)
{
	ring = instance_create_depth(battle_enemy_cnr.x,275,depth-100000, oSprite);
	ring.sprite_index = sRing;
	ring.alarm[0] = 40;
	ring.image_blend = c_white;
	ring.image_xscale = 0.4;
	ring.image_yscale = 0.4;
}
if (time == 3410)
{

	Fader_Fade(0, 1 , 30, 0);
}

if (time == 3560)
{
	
	array = [];
	camera.target = noone;
	camera.x = 640/4-10;
	camera.y = 120;
	battle_enemy_ukb.type = 1;
	battle_enemy_ukb.arm1.index = 0;
	battle_enemy_ukb.head.index = 0;
	battle_enemy_cotv.type = 1;
	battle_enemy_ukb.type = 1;
	battle_enemy_cotv.time = -1;
	battle_enemy_ukb.time = -1;
}
if (time == 3500)
{
	battle_enemy_cnr.x = 10000;


}
if (time == 3510)
{

	Fader_Fade(1, 0 , 30, 0);
	battle_enemy_cotv.depth = depth-1;
	battle_enemy_ukb.depth = depth-1;
	battle_enemy_cotv.x = 320-80-40;
	battle_enemy_cotv.y = 320+30;
	battle_enemy_ukb.x = 320+80;
	battle_enemy_ukb.y = 320+30;
	battle_enemy_cotv.type = 1;
}
if (time == 3520)
{


	TweenFire(battle_enemy_cotv.body, EaseLinear, "once", false, 0, 20, "index", 0, 3);
	//TweenFire(camera, EaseOutBack, "once", false, 0, 40, "x", 640/4-10, 640/4-10-180);
	camera.target = noone;
	TweenFire(camera, EaseOutBack, "once", false, 0, 40, "x", 640/4-10, 640/4-10-180);
}
if (time == 3560)
{
	TweenFire(camera, EaseOutBack, "once", false, 0, 40, "x", 640/4-10-180, 640/4-10+180);
	TweenFire(battle_enemy_ukb.head, EaseLinear, "once", false, 0, 30, "index", 0, 28);
	TweenFire(battle_enemy_ukb.arm1, EaseLinear, "once", false, 0, 12, "index", 0, 6);

}
//room_speed = 30
if (time == 3600)
{
	//array = [black0, black1];
	id.depth =DEPTH_UI.GAME+1;

	_black0 = instance_create_depth(0,0,battle_enemy_ukb.depth, oSprite);
	_black0.sprite_index = sPx2d;
	_black0.image_blend = c_black;
	_black0.image_xscale = 640;
	_black0.image_yscale = 480;
	_black1 = instance_create_depth(0,0,battle_enemy_cotv.depth, oSprite);
	_black1.sprite_index = sPx2d;
	_black1.image_blend = c_black;
	_black1.image_xscale = 640;
	_black1.image_yscale = 480;
	_black0.x = 320;
	_black0.y = 240;
	_black1.x = 320;
	_black1.y = 240;
	_black0.image_angle = 90;
	_black1.image_angle = 270;
	battle_enemy_ub.x = 320;
	battle_enemy_ub.y = 320+30;
	battle_enemy_ub.depth = depth;
	battle_enemy_ub.type = 1;
	battle_enemy_cotv.x += 40;
	TweenFire(camera, EaseOutSine, "once", false, 0, 30, "x", 640/4-10+180, 640/4-10);
	TweenFire(battle_enemy_cotv, EaseInSine, "once", false, 90, 20, "x", battle_enemy_cotv.x, battle_enemy_cotv.x-190);
	TweenFire(battle_enemy_ukb, EaseInSine, "once", false, 90, 20, "x", battle_enemy_ukb.x, battle_enemy_ukb.x+160);
	TweenFire(_black0, EaseInSine, "once", false, 90, 20, "x", _black0.x, _black0.x-180);
	TweenFire(_black1, EaseInSine, "once", false, 90, 20, "x", _black1.x, _black1.x+160);
	battle_enemy_ub.depth =battle_enemy_cotv.depth+1;
	with(battle_enemy_ub)
	{
		var i = 0;
		repeat(8)
		{
			var squ = squs[i];
			squ.alpha = 0;
			squ.scale = 0;
			i ++;
		}
		_len = 100;
		_alpha = 0;
	}
}
if (time == 3710)
{
	instance_destroy(_glowAround);
	with(battle_enemy_ub)
	{
		_start = true;
		var i = 0;
		repeat(8)
		{
			var squ = squs[i];
			squ.alpha = 1;
			i ++;
		}
		time = -1
	}
}

if (time == 3910)
{
	instance_destroy(id);
	Fader_Fade(1,0,60)
}


