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
	//boneCreate(320,320,0, 60, 0);
}
if (keyboard_check_pressed(ord("G")))
{
	//gbCreate(30, 0, 0, 0, 320, 320, irandom(360), 2, 1, 0);
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
	sUbGb0.x = 320-160;
	sUbGb1.x = 320+160;
	sUbGb0.y = 320-220+sin(time*0.05)*10;
	sUbGb1.y = 320-220-sin(time*0.05)*10;
	sUbGb0.image_xscale = 2;
	sUbGb0.image_yscale = 2;
	sUbGb1.image_xscale = 2;
	sUbGb1.image_yscale = 2;
	camera.x = sin(time*0.05)*15;
	camera.angle = cos(time*0.05)*1.5;
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
if (time == 4365)
{
	
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
room_speed = 60;
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

