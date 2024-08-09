/// @description Insert description here
live_auto_call
Player_SetSpd(2.25);
time = GetTimer();
if abs(audio_sound_get_track_position(audio)-(GetTimer()/60)) > 0.02
{
	if (audio_is_playing(audio))
	{
		audio_sound_set_track_position(audio, GetTimer()/60);
	}
}
event_inherited();

if (keyboard_check_pressed(ord("D")))
{
	//bladeCreate(battle_soul.x, battle_soul.y, irandom(360), 0.8);
	//boltCreate(320,320+65, 10)
}

if (keyboard_check_pressed(ord("J")))
{
	//instance_create_depth(320,320,DEPTH_BATTLE.FADER, oCtt3BackGround);
	boltCreate(320,320+65, 10)
}

if (keyboard_check_pressed(ord("S")))
{
	//bladeCreate(320, 320, 0, 0.8)
	//boltCreate(320,320+65, 10)
	//downLB(5, 100, 0);
}
	
if (keyboard_check_pressed(ord("F")))
{
	
}
if (keyboard_check_pressed(ord("G")))
{
	//Battle_MakeGB_ub_yellow(0,0,320,320,0,180);
}
if (time == 3910)
{
	instance_destroy(oSprite);
	instance_destroy(oText);
	instance_destroy(battle_enemy_ub);
	instance_destroy(battle_enemy_ukb);
	instance_destroy(battle_enemy_cotv);
	instance_destroy(battle_enemy_gaster);
	instance_destroy(battle_enemy_cnr);
	instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_cotv);
	instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_cnr);
	instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_ub);
	instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_ukb);
	instance_create_depth(320, 320-80, DEPTH_BATTLE.ENEMY, battle_enemy_gaster);
	sUbGb0 = instance_create_depth(320,320,DEPTH_BATTLE.ENEMY, oSprite);
	sUbGb0.sprite_index = Spr_UbP21_GB;
	sUbGb1 = instance_create_depth(320,320,DEPTH_BATTLE.ENEMY, oSprite);
	sUbGb1.sprite_index = Spr_UbP22_GB;
	sUbGb0.x = 320-160;
	sUbGb1.x = 320+160;



	instance_destroy(oCtt3BackGround);
	instance_create_depth(320,320,DEPTH_BATTLE.FADER, oCtt3BackGround);
	battle_enemy_ub.type = 2;
	battle_enemy_ub.x = 320+240;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-240;
	battle_enemy_ukb.y = 320-80;
	
	battle_enemy_cotv.x = 320-80;
	battle_enemy_cotv.y = 320-80;
	battle_enemy_cnr.x = 320+80;
	battle_enemy_cnr.y = 320-80;
	battle_enemy_ukb.type = 2;
	battle_enemy_cotv.type = 2;
	battle_enemy_cnr.type = 0;
	


	camera.scale_x = 1;
	camera.scale_y = 1;
	camera.target = noone;
	camera.x = 0;
	camera.y = 0;
}
Player_SetHp(320);
if (time > 3910)
{

	sUbGb0.y = 320-220+sin(time*0.05)*10;
	sUbGb1.y = 320-220-sin(time*0.05)*10;
	sUbGb0.image_xscale = 2;
	sUbGb0.image_yscale = 2;
	sUbGb1.image_xscale = 2;
	sUbGb1.image_yscale = 2;
	
}
if (keyboard_check_pressed(ord("A")))
{

	battle_soul.x = 320;
	battle_soul.y = 320;

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
	camera.x = 0;
	camera.y = 0;
	camera.target = noone;
	instance_destroy(oText);
	instance_destroy(oSprite);
	instance_destroy(oAutoDestory);
	fader.color = c_white;
}
if (time == 3910)
{
	Battle_SetSoul(battle_soul_blue);
	BlueSoulControl(DIR.DOWN);
}
if (inRange(GetTimer(), 3915, 3930, 3))
{
	downLB(6,65, 0);
}
if (inRange(GetTimer(), 3950, 3990, 10))
{
	upRB(6,65, 0);
}
//show_debug_message(EaseOutExpo(time%60, 60, 120, 60))
if (time == 3960)
{
	for(var i = 0;i<5;i++)
	{
		leftDB(5, 65, 0, 1, i*12);
	}
}
if (time == 3960)
{
	for(var i = 0;i<2;i++)
	{
		downRB(5, 65, 0, 2, i*12);
	}

}
if (time == 4000)
{
	a = boneCreate(320-180,320,0,130, 0,0, 60, 1);
	TweenFire(a,animcurve_get_channel(acBacks, 0), 0, false, 0, 60, "x", 320-180, 320+10);
	TweenFire(a,EaseLinear, 0, false, 0, 60, "image_angle", 0, 360);
	Battle_MakeBlaster(0,0,320,320-120, 0, 0, 10, 1,2, 15, 35, 0);
	Battle_MakeBlaster(0,0,320+40,320-120, 0, 0, 35, 2,2, 4, 35, 0);
	Battle_MakeBlaster(0,0,320-40,320-120, 0, 0, 35, 2,2, 4, 35, 0);
	//gbCreate(30, 0, 0, 90, 320, 320-120, -90, 2, 1, 13, 10);
}

if (time == 4090)
{
	BlueSoulControl(DIR.LEFT);
	//gbCreate(30, 0, 0, 90, 320, 320-120, -90, 2, 1, 13, 10);
}
if (time == 4050)
{
	Battle_MakeBlaster(640+80,320+30,320-120,320+30, 90, 90, 5, 2,2, 15, 60, 0);
	//gbCreate(30, 0, 0, 90, 320, 320-120, -90, 2, 1, 13, 10);
}
if (time == 4150)
{
	Battle_SetSoul(battle_soul_red);
}
if (inRange(GetTimer(), 4150, 4230, 15))
{
	downLB(2.25, 65, 0);
	upRB(2.25, 65, 0);

}
room_speed =60
if (time == 4100)
{
	bladeCreate(battle_soul.x, battle_soul.y, 90, 0.8, 0, 20);
}
if (time == 4150)
{
	bladeCreate(battle_soul.x, battle_soul.y, irandom(360), 0.8, 0, 20);
}

if (time == 4200)
{
	bladeCreate(battle_soul.x, battle_soul.y, irandom(360), 0.8, 0, 20);
}
if (time == 4248)
{
	bladeCreate(battle_soul.x, battle_soul.y, irandom(360), 0.8, 0, 20);
	awa = boneRing(320,320,16, 100, 10000, 5, 0, true, 0, true);
	TweenFire(awa,animcurve_get_channel(acBacks, 1), 0, false, 0, 45, "offset", 100, 20);
}
if (time == 4295)
{
	//Battle_MakeGB_ub_yellow(0,0,320,320,0,180);
	instance_destroy(awa);
	var _time = 42;
	Battle_MakeBlaster(640+80,320,320-80,320, 90, 90, 0, 2,2, 10, _time, 0);
	Battle_MakeBlaster(320,0,320,320-80, 0, 0, 0, 1.5,2, 10, _time, 0);
	
	Battle_MakeBlaster(-80,320,320+80,320, 90+180, 90+180, 0, 2,2, 10, _time, 0);
	Battle_MakeBlaster(320,640,320,320+80, 180, 180, 0, 1.5,2, 10, _time, 0);
	audio_play_sound(snd_spearrise, 0, 0);
	downLB(5, 65, 0);
	upRB(5, 65, 0);
}

if (time == 4320)
{
	var _time = 42;
	gb0 = Battle_MakeBlaster(0,0,320+40,320, -90, 0, 0, 2,2, 10, 42, 0);
	gb1 = Battle_MakeBlaster(640,0,320-40,320, 90, 0, 0, 2,2, 10, 42, 0);
	audio_play_sound(snd_spearrise, 0, 0);
	upLB(5, 65, 0);
	downRB(5, 65, 0);
	//TweenFire(gb0,EaseLinear, 0, false, 40, 45, "image_angle", 0, 45);
}
if (time == 4349)
{
	Battle_MakeGB_ub_yellow(0,0,320+180,320,0,180, 0, 30);
}
if (time == 4395)
{
	audio_play_sound(snd_impact, 0, 0);
	TweenFire(battle_board,EaseOutSine, 0, false, 0, 10, "x", 320, 320-145);
}
if (time == 4395)
{
	awa = boneRing(320-145,320,3, 100, 10000, 5, 0, true, 0, true);
	awa._color = 2;
	TweenFire(awa,EaseOutSine, 0, false, 0, 0, "offset", 100, 20);
	bone = boneCreate(320-145, 320, 0, 35, false, 1);
	bone.rotate = -3;
}
if (time == 4490)
{
	audio_play_sound(snd_ding, 0, 0);
	TweenFire(awa,EaseLinear, 0, false, 0, 30, "rotate", 5, -5);
	TweenFire(bone,EaseLinear, 0, false, 0, 30, "rotate", -3, 3);
	awa._color = 0;
	bone._color = 2;
	array = [];
	index = 0;
}
if (inRange(GetTimer(), 4395, 4490, 10))
{
	var _bone = upLB(0, 30, 180, 0, -15-irandom(130), 100);
	//_bone.mask = false;
	TweenFire(_bone,animcurve_get_channel(acBacks, 1), 0, false, 0, 30, "y", _bone.y, _bone.y+20);
	TweenFire(_bone,EaseInSine, 0, false, 30, 45, "y", _bone.y, _bone.y+130+80);
	
}
if (inRange(GetTimer(), 4490, 4600, 15))
{
	var _bone = downLB(0, 30, 180, 1, -15-irandom(130), 100);
	//_bone.mask = false;
	TweenFire(_bone,animcurve_get_channel(acBacks, 1), 0, false, 0, 30, "y", _bone.y, _bone.y-20);
	TweenFire(_bone,EaseInSine, 0, false, 30, 45, "y", _bone.y, _bone.y-130-80);
	
}
if (inRange(GetTimer(), 4490, 4600, (4600-4490)/5))
{
	var a = bladeCreate(battle_soul.x, battle_soul.y, irandom(360), 0.8, 0, 20000);
	array_add(array, a);
}

var __time = 4635-1;
var _val = 6;
if (time == __time)
{
	TweenFire(awa,EaseInSine, 0, false, 0, 30, "offset", awa.offset, awa.offset+50);
	TweenFire(bone,EaseInSine, 0, false, 0, 30, "length", bone.length, bone.length+100);
	with(array[index])
	{
		time = _warnTime-1;
	}
	index ++;
	//audio_play_sound(snd_impact, 0, 0);
}
if (time == __time+_val*1)
{
	with(array[index])
	{
		time = _warnTime-1;
	}
	index ++;
	//audio_play_sound(snd_impact, 0, 0);
}
if (time == __time+_val*2)
{
	with(array[index])
	{
		time = _warnTime-1;
	}
	index ++;
	//audio_play_sound(snd_impact, 0, 0);
}
if (time == __time+_val*3)
{
	with(array[index])
	{
		time = _warnTime-1;
	}
	index ++;
	//audio_play_sound(snd_impact, 0, 0);
}

if (time == __time+_val*4)
{
	with(array[index])
	{
		time = _warnTime-1;
	}
	index ++;
	//audio_play_sound(snd_impact, 0, 0);
}
if (time == 4720)
{
	instance_destroy(awa);
	instance_destroy(bone);
}
if (time == 4690)
{
	TweenFire(awa,EaseInSine, 0, false, 0, 30, "offset", awa.offset, awa.offset+50);
	TweenFire(bone,EaseInSine, 0, false, 0, 30, "length", bone.length, 0);
	Battle_SetSoul(battle_soul_blue);
	TweenFire(battle_board,EaseInOutBack, 0, false, 0, 60, "right", 65, 320);
	var a=instance_create_depth(battle_board.x-50,battle_board.y+20+130,-1001,battle_platform)
	TweenFire(a,EaseOutSine, 0, false, 0, 35, "y", battle_board.y+130, battle_board.y+30);
	a.hspeed=2;
	a.sticky=true;
}
if (inRange(time, 3910, 5460))
{	
	camera.x = sin(time*0.05)*15;
	camera.angle = cos(time*0.05)*1.5;
}
if (time == 5460)
{	
	camera.x = 0;
	camera.angle = 0;
}

if (inRange(GetTimer(), 4690, 5070, 3))
{
	//downLB(2.25, 65, 0);
	downLB(5, 30, 0);
}
if (inRange(GetTimer(), 4690, 5070, 13))
{
	
}

if (inRange(GetTimer(), 5070, 5460, 3))
{
	//downLB(2.25, 65, 0);
	upRB(5, 65+sin(time*0.05)*30-30, 0);
	downRB(5, 65-sin(time*0.05)*30-30, 0);

}
if (time == 4750)
{
	downLB(5, 70, 0);
}
if (time == 4780)
{
	downLB(5, 70, 0);
}
if (time == 4750)
{
	upRB(5, 30, 0);
	array = [];
	for(var i =0;i<8;i++)
	{
		array[i] = boneCreate(320+220, 320+180-i*60, 90, 30, false, 0, 100, true);
		TweenFire(array[i], animcurve_get_channel(acSin, 0), TWEEN_MODE_REPEAT, false, 0, 100, "y", array[i].y, array[i].y+30);
		TweenFire(array[i], EaseLinear, 0, false, 0, 100, "x", array[i].x, array[i].x-480);
	}
}

if (time == 4690)
{
	Battle_SetSoul(battle_soul_blue);
	TweenFire(battle_board,EaseInOutBack, 0, false, 0, 60, "right", 65, 320);
	plat=instance_create_depth(517,303,-1001,battle_platform)
	plat.hspeed=-3;
	plat.sticky=true;
}
if (time == 4780)
{
	Battle_MakeBlaster(640+80,320,390,280, 90, 0, 0, 2,2, 10, 30, 0);
	TweenFire(plat, EaseLinear, 0, false, 40, 30, "hspeed", -3, 5);
	plat.sticky = false;
	index = 0; 
}
if (inRange(GetTimer(), 4820, 5080, 40))
{
	plat=instance_create_depth(320-300,303+30-((index%2==0)?0:20),-1001,battle_platform)
	var a = upLB(3+((index%2==0)?0:1),65+30-((index%2==0)?0:20), 0, (index%2==0)?1:2)
	a.x = plat.x;
	plat.width = 30;
	plat.hspeed=3+((index%2==0)?0:1);
	plat.sticky=((index%2==0)?false: true);
	index ++;

}
if (inRange(GetTimer(), 5070,5430, 24))
{
	var _angle = irandom(360);
	var _length = 80;
	Battle_MakeBlaster(battle_soul.x+lengthdir_x(_length+360, _angle),battle_soul.y+lengthdir_y(_length+360, _angle),battle_soul.x+lengthdir_x(_length, _angle),battle_soul.y+lengthdir_y(_length, _angle), _angle-90, _angle-90, 6, 2,2, 5, 24, 0);
	var _angle = irandom(360);
	var _length = 100;


}
if (time == 5070)
{
	Battle_SetSoul(battle_soul_orange);
}
if (time == 5400)
{
	Fader_Fade(0, 1, 60);
}
if (time == 5460)
{
	
	Battle_SetSoul(battle_soul_red);
	instance_destroy(oAutoDestory);
	instance_destroy(oBoneRing);
	battle_soul.x = 320;
	battle_soul.y = 320;
	battle_board.x = 320;
	battle_board.y = 320;
	battle_board.right = 65;
	battle_board.left = 65;
	battle_board.up = 65;
	battle_board.down = 65;
	battle_board.angle = 0;
	

	battle_enemy_ub.x = 320+2400;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-2400;
	battle_enemy_ukb.y = 320-80;
	
	
	sUbGb0.x = 320-1600;
	sUbGb1.x = 320+1600;
	battle_enemy_cotv.x = 320-80;
	battle_enemy_cotv.y = 320-80;
	battle_enemy_cnr.x = 320+80;
	battle_enemy_cnr.y = 320-80;
	
	
	Fader_Fade(1, 0, 60);
}
if (time == 6245)
{
	Fader_Fade(1, 0, 60);
	
	battle_enemy_ub.x = 320+240;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-240;
	battle_enemy_ukb.y = 320-80;
	
	instance_destroy(text0);
	instance_destroy(text1);
	sUbGb0.x = 320-160;
	sUbGb1.x = 320+160;
	camera.scale_x = 1;
	camera.scale_y = 1;
	camera.target = noone;
	camera.x = 0;
	camera.y = 0;
	


	var shd = instance_create_depth(0,0,0,oShdGlitchPixel);
	shd.alarm[0] = 60;
	TweenFire(shd,EaseInOutSine, 0, false, 0, 60, "iTime", 0, 60);
	
	
	//var shd = instance_create_depth(0,0,0,oShdRadialBlur);
	//TweenFire(shd,EaseInOutSine, 0, false, 0, 60, "bufferRadius", 2, 0);
	//TweenFire(shd,EaseInOutSine, 0, false, 0, 60, "shadow_rd", 1, 0);
	
}
if (time == 7000)
{
	Fader_Fade(0, 1, 30);

}
if (time == 7030)
{
	Fader_Fade(1, 0, 60);
	
	battle_enemy_ub.x = 320+2400;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-2400;
	battle_enemy_ukb.y = 320-80;
	
	sUbGb0.x = 320-1600;
	sUbGb1.x = 320+1600;
	battle_enemy_cotv.x = 320-800;
	battle_enemy_cotv.y = 320-80;
	battle_enemy_cnr.x = 320+800;
	battle_enemy_cnr.y = 320-80;
	
	battle_enemy_gaster.image_alpha = 0;
}
if (time == 7400)
{
	Fader_Fade(1, 0, 60);
	
	battle_enemy_ub.x = 320+240;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-240;
	battle_enemy_ukb.y = 320-80;
	
	sUbGb0.x = 320-160;
	sUbGb1.x = 320+160;
	battle_enemy_cotv.x = 320-80;
	battle_enemy_cotv.y = 320-80;
	battle_enemy_cnr.x = 320+80;
	battle_enemy_cnr.y = 320-80;
	
	battle_enemy_gaster.image_alpha = 1;
}
if (time == 7670)
{
	Fader_Fade(1, 0, 60);

}
if (time == 7760)
{
	Fader_Fade(1, 0, 60);

}
if (time == 8410)
{
	Fader_Fade(1, 0, 60);
	battle_enemy_ub.x = 320+2400;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-2400;
	battle_enemy_ukb.y = 320-80;
	
	battle_enemy_cotv.x = 320-800;
	battle_enemy_cotv.y = 320-80;
	battle_enemy_cnr.x = 320+800;
	battle_enemy_cnr.y = 320-80;
	sUbGb0.x = 320-1600;
	sUbGb1.x = 320+1600;
	battle_enemy_gaster.image_alpha = 0.8;
}
if (time == 8500)
{

	Fader_Fade(1, 0, 60);
	battle_enemy_ukb.type = 3;
	battle_enemy_gaster.image_alpha = 1;
	battle_enemy_ub.x = 320+240;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-240;
	battle_enemy_ukb.y = 320-80;
	
	battle_enemy_cotv.x = 320-80;
	battle_enemy_cotv.y = 320-80;
	battle_enemy_cnr.x = 320+80;
	battle_enemy_cnr.y = 320-80;
	sUbGb0.x = 320-160;
	sUbGb1.x = 320+160;
}
if (time == 9140)
{
	Fader_Fade(1, 0, 60);

}
if (time == 9240)
{
	TweenFire(battle_enemy_cnr,EaseInOutSine, 0, false, 0, 60, "x", battle_enemy_cnr.x, battle_enemy_ub.x);
	TweenFire(battle_enemy_ub,EaseInOutSine, 0, false, 0, 60, "x", battle_enemy_ub.x, battle_enemy_cnr.x);
	TweenFire(battle_enemy_cotv,EaseInOutSine, 0, false, 0, 60, "x", battle_enemy_cotv.x, battle_enemy_ukb.x);
	TweenFire(battle_enemy_ukb,EaseInOutSine, 0, false, 0, 60, "x", battle_enemy_ukb.x, battle_enemy_cotv.x);
	Fader_Fade(1, 0, 60);

}

if (time == 9880)
{
	Fader_Fade(1, 0, 60);

}
if (time == 9970)
{
	Fader_Fade(1, 0, 60);

}
if (time == 10400)
{
	TweenFire(battle_enemy_gaster,EaseInOutSine, 0, false, 0, 60, "image_alpha", 1, 0);
}
if (inRange(time, 3910, 5460))
{	
	battle_enemy_ukb.head.index +=0.1;
	var _index = battle_enemy_ukb.head.index;
	if (_index < 20)
	{
		battle_enemy_ukb.head.index = 20;
	}
	else if (_index>=27)
	{
		battle_enemy_ukb.head.index = 20;
	}
	
	
	battle_enemy_ub.head.index +=0.2;
	var _index = battle_enemy_ub.head.index;
	if (_index>5)
	{
		battle_enemy_ub.head.index = 0;
	}
	battle_enemy_cotv.head.index = 0;
}
if (inRange(time, 5460, 6050))
{	
	battle_enemy_ukb.head.index +=0.1;
	var _index = battle_enemy_ukb.head.index;
	if (_index < 20)
	{
		battle_enemy_ukb.head.index = 20;
	}
	else if (_index>=27)
	{
		battle_enemy_ukb.head.index = 20;
	}
	
	
	battle_enemy_ub.head.index +=0.2;
	var _index = battle_enemy_ub.head.index;
	if (_index>5)
	{
		battle_enemy_ub.head.index = 0;
	}
	battle_enemy_cotv.head.index = 48;
}
if (time == 6050)
{	
	text0 = instance_create_depth(320,320,battle_enemy_cotv.depth, oSprite);
	text0.sprite_index = spr_ctt2_text2;
	text0.image_speed = 0;
	text0.x = 320-100;
	text0.y = 0;
	text0.image_xscale = 0.4;
	text0.image_yscale = 0.4;
	text0.depth = -1000;
	TweenFire(text0, EaseLinear, 0, false, 0, 15, "image_alpha", 0, 1);
	TweenFire(text0, EaseLinear, 0, false, 0, 30, "image_index", 0, 62);
	TweenFire(camera, EaseOutSine, 0, false, 0, 30, "x", camera.x, -10);
	TweenFire(camera, EaseOutSine, 0, false, 0, 30, "y", camera.y, -100);
	
	TweenFire(camera, EaseOutSine, 0, false, 0, 30, "scale_x",1, 1.2);
	TweenFire(camera, EaseOutSine, 0, false, 0, 30, "scale_y", 1, 1.2);
	battle_enemy_cotv.head.index = 41;
}
if (time == 6095)
{	
	TweenFire(camera, EaseOutSine, 0, false, 0, 30, "x", camera.x, 150);
	TweenFire(camera, EaseOutSine, 0, false, 0, 30, "y", camera.y, -30);
	text1 = instance_create_depth(320,320,battle_enemy_cotv.depth, oSprite);
	text1.sprite_index = spr_ctt3_text;
	text1.image_speed = 0;
	text1.x = 320+140;
	text1.y = 480-200;
	text1.image_xscale = 0.4;
	text1.image_yscale = 0.4;
	text1.depth = -1000;
	TweenFire(text1, EaseLinear, 0, false, 0, 15, "image_alpha", 0, 1);
	TweenFire(text1, EaseLinear, 0, false, 0, 30, "image_index", 0, 62);
	battle_enemy_cotv.head.index = 31;
}
if (inRange(time, 6245, 69000))
{	
	camera.x = sin(time*0.05)*15;
	camera.angle = cos(time*0.05)*1.5;
}
if (inRange(time, 6245, 6640))
{	

	battle_enemy_cotv.head.index +=0.2;
	var _index = battle_enemy_cotv.head.index;
	if (_index < 44)
	{
		battle_enemy_cotv.head.index = 44;
	}
	else if (_index>=46)
	{
		battle_enemy_cotv.head.index = 44;
	}
	show_debug_message(_index)
	battle_enemy_ukb.head.index = 10;
	battle_enemy_ub.head.index = 11;
}
if (inRange(time, 6640, 7000))
{	

	battle_enemy_cotv.head.index +=0.2;
	var _index = battle_enemy_cotv.head.index;
	if (_index < 44)
	{
		battle_enemy_cotv.head.index = 44;
	}
	else if (_index>=46)
	{
		battle_enemy_cotv.head.index = 44;
	}
	show_debug_message(_index)
	battle_enemy_ukb.head.index = 13;
	battle_enemy_ub.head.index = 6;
}
if (inRange(time, 7400, 8410))
{	
	battle_enemy_cotv.head.index +=0.2;
	var _index = battle_enemy_cotv.head.index;
	if (_index>16)
	{
		battle_enemy_cotv.head.index = 14;
	}
	
	battle_enemy_ub.head.index +=0.2;
	var _index = battle_enemy_ub.head.index;
	if (_index < 13)
	{
		battle_enemy_ub.head.index = 13;
	}
	else if (_index>=16)
	{
		battle_enemy_ub.head.index = 13;
	}
	
	
	battle_enemy_ukb.head.index +=0.1;
	var _index = battle_enemy_ukb.head.index;
	if (_index < 35)
	{
		battle_enemy_ukb.head.index = 35;
	}
	if (_index>36)
	{
		battle_enemy_ukb.head.index = 35;
	}
}
if (inRange(time, 8410, 9140))
{	
	battle_enemy_cotv.head.index +=0.2;
	var _index = battle_enemy_cotv.head.index;
	if (_index>16)
	{
		battle_enemy_cotv.head.index = 14;
	}
	
	battle_enemy_ub.head.index +=0.2;
	var _index = battle_enemy_ub.head.index;
	if (_index>5)
	{
		battle_enemy_ub.head.index = 0;
	}
	battle_enemy_cotv.head.index = 18;
	battle_enemy_ukb.type = 3;
	battle_enemy_ukb.head.index +=0.1;
	var _index = battle_enemy_ukb.head.index;
	if (_index>=27)
	{
		battle_enemy_ukb.head.index = 20;
	}
}
if (time == 9140)
{	
	
	battle_enemy_ub.head.index = 33;
	battle_enemy_cotv.head.index = 49;
	battle_enemy_ukb.type = 2;
	battle_enemy_ukb.head.index = 13;
}

if (inRange(time, 9140, 91400))
{	

	//battle_enemy_cotv.head.index +=0.1;
	var _index = battle_enemy_cotv.head.index;
	if (time % 8 == 0)
	{
		battle_enemy_cotv.head.index = 27;
	}
	if (time % 8 == 4)
	{
		battle_enemy_cotv.head.index = 28;
	}
	battle_enemy_cotv._headShake = true;
	//battle_enemy_ub.head.index +=0.2;
	
	var _index = battle_enemy_ub.head.index;
	if (time % 10 == 0)
	{
		battle_enemy_ub.head.index = 23;
	}
	if (time % 10 == 5)
	{
		battle_enemy_ub.head.index = 24;
	}
	
	
	battle_enemy_ukb.type = 4;
	battle_enemy_ukb.head.index +=0.3;
	var _index = battle_enemy_ukb.head.index;
	if (_index>=27)
	{
		battle_enemy_ukb.head.index = 20;
	}
}
if (time == 7120)
{
	//var shd = instance_create_depth(0,0,0,oShdBlur);
	//eenFire(shd,EaseInOutSine, 0, false, 0, 60, "flashback_blur", 0, 1);
}
room_speed = 60