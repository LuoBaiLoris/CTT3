/// @description Insert description here
live_auto_call
legs.x1 = x;
legs.y1 = y;
time ++;
if (type == 0)
{
	array = [arm0, arm1,body, head];
	body.sprite = Spr_UbP3_Bodies;
	head.sprite = Spr_UbP3_PatchHeads;
	legs.sprite = Spr_UbP3_Legs1;
	arm0.sprite = Spr_UbP3_Hand1;
	arm1.sprite = Spr_UbP3_Hand4;
	
	
	body.x = x+sin(time*0.05/2-0.2)*3;
	body.y = y-240+150+sin(time*0.05)*6;
	head.x = x-2+sin(time*0.05/2-0.2)*3;
	head.y = y-240+100-5+sin(time*0.05-0.2)*7+1;
	legs.x0 = x+5+sin(time*0.05/2-0.2)*3;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*0.05)*5;
	
	arm0.x = x-3+15+19+sin(time*0.05/2-0.2)*3;
	arm0.y = y-20-240+150-5+sin(time*0.05-0.2)*6;
	arm0.angle = sin(time*0.05/2-0.5)*5;
	arm1.x = x+3-15-19-3+sin(time*0.05/2-0.2)*3;
	arm1.y = y-20-240+150-5+sin(time*0.05-0.2)*6;
	arm1.angle = sin(time*0.05/2-0.5)*5;
}
if (type == 1)
{

	var xoff = -10;
	var yoff = 5;
	x = 310;
	y = 320;
	anim0.x = x;
	anim0.y = y;
	if (keyboard_check_pressed(vk_space))
	{
		time = -1;
	}
	
	if (_start)
	{
		array = [anim1, anim2, anim3,anim4, anim5, anim6, anim0];
		if (time == 0)
		{
			_alpha = 0;
			_len = 0;
			_spd = 0;
			_scale = 0;
			TweenFire(id, EaseOutBack, "once", false, 0, 120, "_len", 0, 1);
			TweenFire(id, EaseOutBack, "once", false, 0, 120, "_scale", 0, 1);
			TweenFire(id, EaseOutSine, "once", false, 0, 120, "_spd", 1, 3);
			anim0.index = 0;
			anim2.alpha = 0;
			anim5.alpha = 0;
			anim3.alpha = 0;
			anim6.alpha = 0;
			anim1.y = 130+80+yoff;
			TweenFire(anim1, EaseOutBack, "once", false, 0, 30, "x", 320+220+xoff, 320+80+xoff);
			TweenFire(anim1, EaseOutSine, "once", false, 0, 30, "alpha", 0, 1);
			TweenFire(anim1, EaseInSine, "once", false, 0, 30, "angle", 0, 360*2);
		
			anim4.y = 130+80+yoff;
			anim4.scale = -2;
			TweenFire(anim4, EaseOutBack, "once", false, 0, 30, "x", 320-220+xoff, 240+xoff);
			TweenFire(anim4, EaseOutSine, "once", false, 0, 30, "alpha", 0, 1);
			TweenFire(anim4, EaseInSine, "once", false, 0, 30, "angle", 0, -360*2);
		}
		if (time == 15)
		{
			anim0.index = 1;
		}
		if (time == 30)
		{
			anim1.alpha = 0;
			anim4.alpha = 0;
		
			anim2.alpha = 1;
			anim5.alpha = 1;
		
			anim2.x = 240+xoff;
			anim2.y = 130+80+yoff;
	
			anim5.x = 320+80+xoff;
			anim5.y = 130+80+yoff;
		}
		if (time == 60)
		{

		
			anim3.x = 347+xoff;
			anim3.y = 134+80+yoff;
	
			anim6.x = 347+xoff;
			anim6.y = 134+80+yoff;
		

			TweenFire(anim0, EaseLinear, "once", false, 0, 10, "index", 1, 3);
		
			anim3.x = 320+30+xoff;
			anim3.y = 130+80+yoff;
	
			anim6.x = 320-30+xoff;
			anim6.y = 130+80+yoff;
		}
		if (time == 65)
		{	
			anim2.alpha = 0;
			anim5.alpha = 0;
			anim3.alpha = 1;
			anim6.alpha = 1;
			anim3.x = 320+30+xoff;
			anim3.y = 130+80+yoff;
	
			anim6.x = 320-30+xoff;
			anim6.y = 130+80+yoff;
		}
		if (time == 95)
		{	
			TweenFire(anim0, EaseLinear, "once", false, 0, 45, "index", 3, 10);
		}
		if (time == 145)
		{	
			anim3.alpha = 0;
			anim6.alpha = 0;
			TweenFire(anim0, EaseLinear, "once", false, 0, 10, "index", 10, 16);
			TweenFire(id, EaseOutSine, "once", false, 0, 30, "_alpha", 0, 1);
			TweenFire(camera, EaseOutSine, "once", false, 0, 30, "scale_x", camera.scale_x, 3);
			TweenFire(camera, EaseOutSine, "once", false, 0, 30, "scale_y", camera.scale_y, 3);
		}
		if (inRange(time, 145, 145+30))
		{
			camera.target = oAnimation0;
			oAnimation0.x = 310+irandom_range(-3,3);
			oAnimation0.y = 240+irandom_range(-3,3);
		}
		if (time == 145)
		{
			fader.color = c_white;
			Fader_Fade(0, 1, 30);
		}
		//camera.scale_x = 2;
		//camera.scale_y = 2;
		anim2.index +=0.5;
		//anim4.index +=0.5;
		anim5.index +=0.5;
		anim3.index +=0.5;
		anim6.index +=0.5;

		var i = 0;
		repeat (array_length(squs))
		{

			var spr = squs[i];
			spr.sprite = sBlackBoard;
		
			var length;
			var angleSpd;
			if (i%2==0)
			{
				spr.blend = c_aqua;
				length = 120*_len;
				angleSpd = sin(time*0.02)*180;
				spr.scale = 7*_scale;
			}
			else
			{
				length = 80*_len;
				angleSpd = -sin(time*0.02)*180;
				spr.scale = 5*_scale;
			}


			spr.x = x + lengthdir_x(length, 360/8*i+time*_spd);
			spr.y = y-80 + lengthdir_y(length, 360/8*i+time*_spd);
			spr.angle = 360/8*i-90+time+angleSpd;

			i ++;
		}

	}
	else
	{
		array = [anim0];
	}
	//show_debug_message(squs)
	
}

if (type == 2)
{
	array = [arm0,body, head, arm1];
	body.sprite = Spr_UbP3_Bodies;
	head.sprite = Spr_UbP3_Heads;
	legs.sprite = Spr_UbP3_Legs1;
	arm0.sprite = Spr_UbP3_Hand6;
	arm1.sprite = Spr_UbP3_Hand3;
	
	var spd = 0.1;
	body.x = x+sin(time*spd/2-0.2)*3;
	body.y = y-240+150+sin(time*spd)*3;
	head.x = x+sin(time*spd/2-0.2)*3;
	head.y = y-240+100-5+sin(time*spd-0.2)*4+1;
	head.angle = sin(time*0.5)*1.5;
	body.angle = sin(time*0.3)*1+random_range(-0.5,0.5);
	legs.x0 = x+5+sin(time*spd/2-0.2)*3;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*spd)*3;
	
	arm0.x = x-50+10+sin(time*spd/2)*3;
	arm0.y = y-20-240+150-5+sin(time*spd)*3;
	arm0.angle = sin(time*spd/2-0.5)*5+sin(time*0.4)*1;
	arm1.x = x+50-4+sin(time*spd/2)*3;
	arm1.y = y-20-240+150+sin(time*spd)*3;
	arm1.angle = sin(time*spd/2-0.5)*5+sin(time*0.4)*1;
}
