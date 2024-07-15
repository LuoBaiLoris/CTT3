/// @description Insert description here
live_auto_call


depth = DEPTH_UI.GAME;
time = GetTimer(); //battle_turn_test0.timer
bpm = 126;
var beat = bpm / 60;
//show_debug_message(beat)
if (keyboard_check_pressed(ord("A")))
{
	SetTimer(1460);
	TweenDestroy(all);
}
if (time == 0)
{
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
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "y", 240+90, 240);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_xscale", 3, 1);
	TweenFire(dialog, EaseInSine, "once", false, 90, 90, "image_yscale", 3, 1);
	TweenFire(dialog, EaseInOutSine, "once", false, 90, 90, "image_alpha", 1, 0);
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
	TweenFire(line0, EaseOutCirc, "once", false, 0, 30, "y", 480+640*2, 240);
	TweenFire(line0, EaseOutCirc, "once", false, 30, 30, "angle", 0, 360*6-90);
}
if (time == 1460)
{
	camera.angle = 0;
}
if (time == 1560)
{
	glow0.blend = make_color_rgb(139, 92, 25);
	TweenFire(dtm0, EaseLinear, "once", false, 0, 1950-1560, "index", 0, 7);
	
	
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, 140, "y", 240-120, 240-40);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", -10, 0);
}
if (time == 2150)
{
	TweenFire(dtm0, EaseLinear, "once", false, 0, 2230-2150, "index", 7, 15);
	TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "scale_x", 1, 2);
	TweenFire(camera, EaseLinear, "once", false, 0, 2230-2150, "scale_y", 1, 2);
}
if (time == 2300)
{
	dtm0.sprite = Spr_DTM_Bomb2;
}
if (time == 1760)
{
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240-40, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, 140, "y", 240-120, 240-40);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", 10, 0);
}
if (time == 1955)
{
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240-40, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, (1955-1760-60), "y", 240-120, 240-40);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", -10, 0);
}
if (time == 2150)
{
	TweenFire(line0, EaseOutCirc, "once", false, 0, 60, "y", 240-40, 240-120);
	TweenFire(line0, EaseInCirc, "once", false, 60, (2150-1955-60), "y", 240-120, 240-40);
	TweenFire(dtm0, EaseOutSine, "once", false, 0, 60, "angle", 10, 0);
	
}


if (time > 1460+60)
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
}
if (inRange(time, 1560,2350))
{
	glow0.x = 320-100;
	glow0.y = 240-100;
	glow0.xscale = 1;
	glow0.yscale = 1;
	glow0.alpha = 1;

	Camera_Shake(3,3,0.1,0.1,1,1)
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

