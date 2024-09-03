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
	//boltCreate(320,320+65, 10)
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
//Player_SetHp(320);
if (time > 3910)
{

	sUbGb0.y = 320-220+sin(time*0.05)*10;
	sUbGb1.y = 320-220-sin(time*0.05)*10;
	sUbGb0.image_xscale = 2;
	sUbGb0.image_yscale = 2;
	sUbGb1.image_xscale = 2;
	sUbGb1.image_yscale = 2;
	
}
if (keyboard_check_pressed(ord("W")))
{
	global.collTime = 0;
	battle_soul.x = 320;
	battle_soul.y = 320;

	SetTimer(3910);
	battle_soul.x = 320;
	battle_soul.y = 320;
	battle_board.x = 320;
	battle_board.y = 320;
	battle_board.right = 65;
	battle_board.left = 65;
	battle_board.up = 65;
	battle_board.down = 65;
	battle_board.angle = 0;
	battle_enemy_cotv._headShake = false;
	battle_enemy_gaster.image_alpha = 1;



	instance_destroy(oAutoDestory);
	instance_destroy(battle_bullet);
	instance_destroy(oSprite);
	instance_destroy(oText);
	instance_destroy(battle_enemy_ub);
	instance_destroy(battle_enemy_cnr);
	instance_destroy(battle_enemy_ukb);
	instance_destroy(battle_enemy_cotv);
	instance_destroy(battle_enemy_gaster);


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


	instance_destroy(battle_ui);
	instance_destroy(battle_button);
	instance_create_depth(30,454,0,battle_ui);
	instance_create_depth(32+53.5,453,0,battle_button_fight);
	instance_create_depth(185+53.5,453,0,battle_button_act);
	instance_create_depth(345+53.5,453,0,battle_button_item);
	instance_create_depth(500+53.5,453,0,battle_button_mercy);


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
	camera.angle = 0;
	battle_ui.x = 30;
	battle_ui.y = 401;

	instance_destroy(oShdBloom);
	instance_destroy(oShdBlur);
	instance_destroy(oShdShadow);
	instance_destroy(oShdRadialBlur);
	instance_destroy(oShdGlitch);
	instance_destroy(oBlur);
	instance_destroy(battle_ui);
	instance_destroy(battle_button);
	instance_create_depth(30,404,0,battle_ui);
	instance_create_depth(32+53.5,453,0,battle_button_fight);
	instance_create_depth(185+53.5,453,0,battle_button_act);
	instance_create_depth(345+53.5,453,0,battle_button_item);
	instance_create_depth(500+53.5,453,0,battle_button_mercy);
}


//camera

if (inRange(time, 3910, 5460))
{	
	camera.x = sin(time*0.05)*15;
	camera.angle = cos(time*0.05)*1.5;
}
if (inRange(time, 6245, 7670))
{	
	camera.x = sin(time*0.05)*15;
	camera.angle = cos(time*0.05)*1.5;
}
if (inRange(time, 7670,7760))
{
	camera.x = -60;
	camera.y = -60-(time-7670);
	camera.angle = -2;
}

if (inRange(time, 7760, 8410))
{	
	camera.x = sin(time*0.05)*15;
	camera.y = 0;
	camera.angle = cos(time*0.05)*1.5;
}
if (inRange(time, 8410, 8500))
{	
	camera.x = 0;
	camera.y = 0;
	camera.angle = 0;
}
if (inRange(time, 8500, 76700))
{	
	camera.x = sin(time*0.05)*15;
	camera.y = 0;
	camera.angle = cos(time*0.05)*1.5;
}

//*animation
if (time == 5400)
{
	Fader_Fade(0, 1, 60);
}
if (time == 5460)
{
	
	//Battle_SetSoul(battle_soul_red);
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
if (time == 6150)
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
if (time == 6200)
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

if (time == 6245)
{
	Fader_Fade(1, 0, 60);
	
	battle_enemy_ub.x = 320+240;
	battle_enemy_ub.y = 320-80;
	battle_enemy_ukb.x = 320-240;
	battle_enemy_ukb.y = 320-80;
	if (instance_exists(text0))
	{
		instance_destroy(text0);
	}
	if (instance_exists(text1))
	{
		instance_destroy(text1);
	}
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
	battle_ui.x += 1000;
	battle_board.x += 1000;
	battle_soul.x += 1000;
	battle_button.x += 1000
}
if (time == 7400)
{
	Fader_Fade(1, 0, 60);
	fader.color = c_white;
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
	instance_destroy(battle_ui);
	instance_destroy(battle_button);
	instance_create_depth(30,404,0,battle_ui);
	instance_create_depth(32+53.5,453,0,battle_button_fight);
	instance_create_depth(185+53.5,453,0,battle_button_act);
	instance_create_depth(345+53.5,453,0,battle_button_item);
	instance_create_depth(500+53.5,453,0,battle_button_mercy);
	battle_board.x = 320;
	battle_board.y = 320;
}
if (time == 7401)
{
	battle_soul.x = 320;
	battle_soul.y = 320;

}
if (time == 7760)
{
	Fader_Fade(1, 0, 60);
}
if (inRange(time, 7500, 7670))
{	
}
if (time == 7500)
{
	fader.color = c_black;
	TweenFire(fader,EaseLinear, 0, false, 0, 7400-7120, "alpha", 0, 0.85);
}
if (time == 7670)
{
	//Fader_Fade(1, 0, 60);

}

if (time == 7760)
{
	fader.color = c_white;
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
	battle_enemy_gaster.image_alpha = 0;
	instance_destroy(battle_ui);
	instance_destroy(battle_button);
	instance_destroy(ubGb1);
	instance_destroy(battle_bullet);
	_ukbAnim = instance_create_depth(320,320+100,-1000, oSprite);
	_ukbAnim.sprite_index = Spr_UkbP3_Patches_Anim0;
	_ukbAnim.image_speed = 0;
	_ukbAnim.image_xscale = 2;
	_ukbAnim.image_yscale = 2;
	//TweenFire(_ukbAnim,animcurve_get_channel(acBacks, 0), 0, false, 0, 60, "x", 320-100, 320+60);
	TweenFire(_ukbAnim,EaseOutSine, 0, false, 0, 40, "x", 100, 320+30);
	TweenFire(_ukbAnim,EaseInSine, 0, false, 40, 20, "x", 320+30, 320-30);
	TweenFire(_ukbAnim,EaseLinear, 0, false, 0, 10, "image_index", 0, 2);
	TweenFire(_ukbAnim,EaseLinear, 0, false, 50, 10, "image_index", 2, 5);
	
	text0 = instance_create_depth(320,320,battle_enemy_cotv.depth, oSprite);
	text0.sprite_index = spr_text3;
	text0.image_speed = 1.5;
	text0.x = 320;
	text0.y = 120;
	text0.image_xscale =0.7;
	text0.image_yscale = 0.7;
	text0.depth = -1000;
	TweenFire(text0, EaseLinear, 0, false, 0, 15, "image_alpha", 0, 1);
	battle_board.x = 3200;
	battle_board.y = 320;

	battle_soul.x = 3200;
	battle_soul.y = 320;
	
	_act = instance_create_depth(320,320,-900, oSprite);
	_act.sprite_index = Spr_UkbP2p_Act;
	_act.image_speed = 0;
	_act.image_alpha = 0;
	_act.image_xscale = 2;
	_act.image_yscale = 2;
	fader._gui = false;
	TweenFire(_act,animcurve_get_channel(acBacks, 0), 0, false, 40, 30, "x", 320, 320+120);
	TweenFire(_act,EaseLinear, 0, false, 60, 10, "depth", -900, fader.depth-110);
	TweenFire(_act,EaseLinear, 0, false, 40, 30, "image_alpha", 0, 1);
	
}
	
if (time == 8500)
{
	battle_board.x = 320;
	battle_board.y = 320;


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
	instance_destroy(battle_ui);
	instance_destroy(battle_button);
	instance_create_depth(30,404,0,battle_ui);
	instance_create_depth(32+53.5,453,0,battle_button_fight);
	instance_create_depth(185+53.5,453,0,battle_button_act);
	instance_create_depth(345+53.5,453,0,battle_button_item);
	instance_create_depth(500+53.5,453,0,battle_button_mercy);
	sUbGb0.x = 320-160;
	sUbGb1.x = 320+160;
	instance_destroy(_ukbAnim);
	instance_destroy(text0);
	_act.image_index = 1;
	_act._gui = true;
	TweenFire(_act,EaseOutSine, 0, false, 0, 60, "image_alpha", 1, 0);
	TweenFire(_act,EaseOutSine, 0, false, 0, 60, "image_xscale", 2, 4);
	TweenFire(_act,EaseOutSine, 0, false, 0, 60, "image_yscale", 2, 4);

}
if (time == 8501)
{
	battle_soul.x = 320;
	battle_soul.y = 320;

}
if (time == 8470)
{
	var shd = instance_create_depth(0,0,0,oShdGlitchPixel);
	shd.alarm[0] = 70;
	TweenFire(shd,EaseInOutSine, 0, false, 0, 70, "iTime", 60, 120);

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
	_shd = instance_create_depth(0,0,0,oBlur);
	_shd.type = 1;
	TweenFire(_shd,animcurve_get_channel(acBacks, 0), 0, false, 0, 9970-9880, "offset", 0, 30);
	TweenFire(_shd,animcurve_get_channel(acBacks, 0), 0, false, 0, 9970-9880, "amp", 0, 2);
	

}
if (time == 9970)
{
	instance_destroy(_shd)
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
	//show_debug_message(_index)
	battle_enemy_ukb.head.index = 10;
	battle_enemy_ub.head.index = 11;
}
if (inRange(time, 6640, 7050))
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
	//show_debug_message(_index)
	battle_enemy_ukb.head.index = 13;
	battle_enemy_ub.head.index = 6;
}
if (inRange(time, 7400, 8410))
{	
	battle_enemy_cotv.head.index +=0.2;
	var _index = battle_enemy_cotv.head.index;
	if (_index < 14)
	{
		battle_enemy_cotv.head.index = 14;
	}
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

if (inRange(time, 9240, 91400))
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
	_shd = instance_create_depth(0,0,0,oBlur);
	fader.color = c_black;
	TweenFire(_shd,animcurve_get_channel(acBacks, 0), 0, false, 0, 7400-7120, "offset", 0, 30);
	TweenFire(fader,animcurve_get_channel(acBacks, 0), 0, false, 0, 7400-7120, "alpha", 0, 0.5);
}
if (time == 7400)
{
	instance_destroy(oBlur);
}
if (time == 7670)
{
	_wave = instance_create_depth(0,0,0,oWave);
	oWave.scalex=2
	oWave.scaley=0.5
}
if (time == 7760)
{
	instance_destroy(_wave)
}


//turn
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
////show_debug_message(EaseOutExpo(time%60, 60, 120, 60))
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
	_awa = boneRing(320,320,16, 100, 10000, 5, 0, true, 0, true);
	TweenFire(_awa,animcurve_get_channel(acBacks, 1), 0, false, 0, 45, "offset", 100, 20);
}
if (time == 4295)
{
	//Battle_MakeGB_ub_yellow(0,0,320,320,0,180);
	instance_destroy(_awa);
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
	_awa = boneRing(320-145,320,3, 100, 10000, 5, 2, true, 0, true);
	TweenFire(_awa,EaseOutSine, 0, false, 0, 0, "offset", 100, 20);
	bone = boneCreate(320-145, 320, 0, 35, false, 1);
	bone.rotate = -3;
}
if (time == 4490)
{
	audio_play_sound(snd_ding, 0, 0);
	TweenFire(_awa,EaseLinear, 0, false, 0, 30, "rotate", 5, -5);
	TweenFire(bone,EaseLinear, 0, false, 0, 30, "rotate", -3, 3);
	_awa._color = 0;
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
	TweenFire(_awa,EaseInSine, 0, false, 0, 30, "offset", _awa.offset, _awa.offset+50);
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
	instance_destroy(_awa);
	instance_destroy(bone);
}
if (time == 4690)
{
	TweenFire(_awa,EaseInSine, 0, false, 0, 30, "offset", _awa.offset, _awa.offset+50);
	TweenFire(bone,EaseInSine, 0, false, 0, 30, "length", bone.length, 0);
	Battle_SetSoul(battle_soul_blue);
	TweenFire(battle_board,EaseInOutBack, 0, false, 0, 60, "right", 65, 320);
	var a=instance_create_depth(battle_board.x-50,battle_board.y+20+130,-1001,battle_platform)
	TweenFire(a,EaseOutSine, 0, false, 0, 35, "y", battle_board.y+130, battle_board.y+30);
	a.hspeed=2;
	a.sticky=true;
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

if (time == 5460)
{
	battle_board.left = 130;
	battle_board.right = 130;
	Battle_SetSoul(battle_soul_blue);
	bones0 = [];
	bones1 = [];
	bones2 = [];
	bones3 = [];
}
if (inRange(GetTimer(), 5460,5800, 36))
{
	
	var ldb = leftDB(3, 52, 0,1);
	var rub = rightUB(3, 52, 0,1);
	array_add(bones0, ldb);
	array_add(bones1, rub);
	index ++ 
	
}
if (inRange(GetTimer(), 5460,5800, 24))
{
	var dlb = downLB(3, 30, 0);
	var urb = upRB(3, 30, 0);
	dlb.x = 320-120;
	urb.x = 320+120;
	array_add(bones2, dlb);
	array_add(bones3, urb);
}
if (inRange(GetTimer(), 5460,5900))
{
	battle_board.left = 65+sin((time-5460)*0.05)*60;
	battle_board.right = 65-sin((time-5460)*0.05-0.5)*60;
	for(var i = 0;i<array_length(bones0);i++)
	{
		var _bone = bones0[i]
		if (instance_exists(_bone))
		{
			_bone.x = battle_board.x-battle_board.left;
		}
	}
	for(var i = 0;i<array_length(bones1);i++)
	{
		var _bone = bones1[i]
		if (instance_exists(_bone))
		{
			_bone.x = battle_board.x+battle_board.right;
		}
	}
	
	for(var i = 0;i<array_length(bones3);i++)
	{
		var _bone = bones3[i]
		if (instance_exists(_bone))
		{
			_bone.y = battle_board.y-battle_board.up;
		}
	}
	for(var i = 0;i<array_length(bones2);i++)
	{
		var _bone = bones2[i]
		if (instance_exists(_bone))
		{
			_bone.y= battle_board.y+battle_board.down;
		}
	}
}
if (inRange(GetTimer(), 5840,6150, 40))
{
	plat=instance_create_depth(517,320+30,-1001,battle_platform)
	plat.hspeed=-5;
}
if (inRange(GetTimer(), 5850,6150, 5))
{
	
	var a = downLB(5, 65-30, 0);
	a.x = 320-200;
	if index% 5 == 0
	{
		a.length = 100-30;	
	}
	index ++
}
if (time == 5900)
{
	battle_board.x = 320;
	TweenFire(battle_board,EaseOutSine, 0, false, 0, 60, "left", battle_board.left, 180);
	TweenFire(battle_board,EaseOutSine, 0, false, 0, 60, "right", battle_board.right, 180);
}
if (time == 5850)
{
	index = 0;

	Battle_MakeBlaster(640+80,320,battle_soul.x,280, 90, 0, 5, 2,2, 10, 30, 0);
}
if (inRange(GetTimer(), 5840,6100, 30))
{
	var a = instance_create_depth(battle_soul.x,190,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, oWingdings);
	a.alarm[1] = 300;
	TweenFire(a, EaseInSine, 0, false, 0 , 60, "y", a.y, 320+65);
	TweenFire(a, EaseLinear, 0, false, 60 , 60, "vspeed", -5,5);
	TweenFire(a, EaseLinear, 0, false, 60 , 10, "hspeed", 0, irandom_range(-2,2));
}

if (time == 6240)
{

	battle_board.x = 320;
	battle_board.y = 320;
	battle_board.right = 65;
	battle_board.left = 65;
	battle_board.up = 65;
	battle_board.down = 65;
	battle_board.angle = 0;
	battle_soul.x = 320;
	battle_soul.y = 320;
	Battle_SetSoul(battle_soul_orange);
	index = 0;
	index1 = irandom(180);
}
if (inRange(time, 6240, 6248,3))
{
	var _angle = time+(360/15*index*sin(time*0.05)*5)+index1;
	var _length = 80;
	//Battle_MakeBlaster(320+lengthdir_x(_length+360, _angle),320+lengthdir_y(_length+360, _angle),320+lengthdir_x(_length, _angle),320+lengthdir_y(_length, _angle), _angle-90, _angle-90, 30+index*12, 1,2, 4, 24, 0);
	//index ++;
}

if (time == 6248)
{
	_br = boneRing(320,320,4,50,30,3, 0, 0, 90, false);
	
}

if (time == 6250)
{
	index = choose(0,1);
	Battle_SetSoul(battle_soul_blue);
	if (index == 0)
	{
		BlueSoulControl(DIR.LEFT);
		Battle_MakeGB_ub_blue(0,0,320-180,320,0,0, 0, 30);
	}
	else
	{
		BlueSoulControl(DIR.RIGHT);
		Battle_MakeGB_ub_blue(0,0,320+180,320,0,180, 0, 30);
	}

	
}

if (time == 6280)
{
	Battle_SetSoul(battle_soul_orange);
}
if (inRange(time, 6260, 6320, 15))
{
	leftDB(5, 50, 0);
	rightUB(5, 50, 0);
}
if (inRange(time, 6340, 6370, 3))
{
	var _angle = 90+irandom_range(-10,10)
	var _length = 80;
	Battle_MakeBlaster(battle_soul.x+lengthdir_x(_length+360, _angle),battle_soul.y+lengthdir_y(_length+360, _angle),battle_soul.x+lengthdir_x(_length, _angle),battle_soul.y+lengthdir_y(_length, _angle), _angle-90, _angle-90, 3, 1,2, 4, 30, 0);
}
if (inRange(time, 6300, 6340, 3))
{
	var _angle = 0;
	var _length = 80;
	if (index == 0)
	{
		_angle = irandom_range(-10,10);
	}
	else
	{
		_angle = 180+irandom_range(-10,10);
	}

	Battle_MakeBlaster(battle_soul.x+lengthdir_x(_length+360, _angle),battle_soul.y+lengthdir_y(_length+360, _angle),battle_soul.x+lengthdir_x(_length, _angle),battle_soul.y+lengthdir_y(_length, _angle), _angle-90, _angle-90, 3, 1,2, 4, 30, 0);
}

if (inRange(time, 6340, 7030))
{
	battle_board.angle = sin((time-6340)*0.05)*20;
	_br.offset = 50+sin((time-6340)*0.05)*20;
}
if (inRange(time, 6430, 7000,30+21))
{

	bladeCreate(battle_soul.x, battle_soul.y, irandom(360), 0.8, 0, 30);

}
if (time == 6400)
{
	var a = boneCreate(320-65,320-65,0,180,0, 0, 600, true);
	var b = boneCreate(320+65,320+65,0,180,0,0, 600, true);
	a.rotate = -2;
	b.rotate = -2;
}
if (time == 7030)
{
	instance_destroy(oBoneRing);
}
if (time == 7400)
{
	battle_board.angle = 0;
	Battle_SetSoul(battle_soul_orange);
	battle_board.right = 280;
	battle_board.left = 280;
	TweenFire(battle_board, EaseLinear, 0, false, 0 , 60*5, "right", 280, 20);
	TweenFire(battle_board, EaseLinear, 0, false, 0 , 60*5, "left", 280, 20);
}
if (inRange(GetTimer(), 7400, 7400+5*60))
{
	if (time%40 == 0)
	{
		downLB(4, 65, 0);
	}
	else if(time%40 == 20)
	{
		upRB(4, 65, 0);
	}
	else if(time%15 == 0) && (time < 7650)
	{
		var _angle = 0;
		var _length = 80;
		_angle = irandom(360);
		Battle_MakeBlaster(battle_soul.x+lengthdir_x(_length+360, _angle),battle_soul.y+lengthdir_y(_length+360, _angle),battle_soul.x+lengthdir_x(_length, _angle),battle_soul.y+lengthdir_y(_length, _angle), _angle-90, _angle-90, 3, 1,2, 4, 30, 0);
	}
}
if (time == 7680)
{
	array = [];
	var i = 0;
	repeat(12)
	{
		var _bone = boneCreate(320,320,0, 60, 1, 0, 60+20, true);
		array[i] = _bone;
		i ++
	}
	var i = 0;
	repeat(array_length(array))
	{
		if (i%2==0)
		{
			array[i].image_angle = 0;
			array[i].x = 320+40;
			array[i].y = 320-30+i*10-20;
			TweenFire(array[i], EaseOutBounce , 0, false, 5+(array_length(array)-i)*3, 30, "x", array[i].x, 320-20)
		}
		else if(i%2 == 1)
		{
			array[i].image_angle = 180;
			array[i].x = 320-40;
			array[i].y = 320-30+i*10-20;
			TweenFire(array[i], EaseOutBounce , 0, false, 5+(array_length(array)-i)*3, 30, "x", array[i].x, 320+20)
		}
		i++
	}
}
if (time == 7760)
{
	Battle_MakeGB_ub_yellow(0,0,320+180,320-60,0,180, 0, 10);
	sUbGb1.x = 3200;
	ubGb1 = instance_create_depth(320+65,120,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, oSprite);
	ubGb1.sprite_index = Spr_UbP22_GB;
	ubGb1.image_xscale = 2;
	ubGb1.image_yscale = 2;
	
	battle_board.right = 20;
	battle_board.left = 20;
	TweenFire(battle_board,EaseOutBack, 0, false, 30+0, 30, "angle", 0, 90);
	TweenFire(battle_board,EaseOutSine, 0, false, 30+0, 30, "up", 65, 290);
	TweenFire(battle_board,EaseOutSine, 0, false, 30+0, 30, "down", 65, 290);
	TweenFire(battle_board,EaseOutSine, 0, false, 30+0, 30, "left", 20, 60);


}
if (inRange(GetTimer(), 7760, 8400))
{
	if (time%10 == 0) && (time >= 7800)
	{
		var i = 0;
		repeat(12)
		{
			var _bone = boneCreate(ubGb1.x,ubGb1.y,360/12*i, 20, 0, 1, true, false);
			_bone.rotate = 5
			_bone.direction = 360/12*i+sin(time*0.02)*360;
			_bone.speed = 8;
			_bone.gravity = 0.1;
			_bone.gravity_direction = 180+point_direction(ubGb1.x,ubGb1.y, battle_soul.x, battle_soul.y)
			i ++
		}
	}
	ubGb1.x = lerp(ubGb1.x,battle_soul.x,0.08);
	ubGb1.y = lerp(ubGb1.y,battle_soul.y-180,0.08);
}
if (inRange(GetTimer(), 7760,8400, 120))
{
	TweenFire(battle_board,animcurve_get_channel(acBacks, 0), 0, false, 0, 60, "right", 20, 60);
	var i = 0;
	var k = 0;
	repeat(15)
	{
		if (choose(0,1) == 1)&&(k<10)
		{
			var _rnd = k+irandom(30);
			var a = instance_create_depth(320-290+40*i+10,320-40,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, oWingdings);
			a.mask = true;
			a.alarm[1] = 300;	
			TweenFire(a, EaseInSine, 0, false, 0+_rnd*2 , 60, "y", a.y, 320+65-10);
			TweenFire(a, EaseLinear, 0, false, 60+_rnd*2 , 60, "vspeed", -5,5);
			TweenFire(a, EaseLinear, 0, false, 60+_rnd*2 , 10, "hspeed", 0, irandom_range(-2,2));
			k++;
		}
		i ++
	}
	
}
if (time == 8500)
{
	Battle_SetSoul(battle_soul_red);
	battle_soul.x = 320;
	battle_soul.y = 320;
	battle_board.x = 320;
	battle_board.y = 320;
	battle_board.right = 65;
	battle_board.left = 65;
	battle_board.up = 65;
	battle_board.down = 65;
	battle_board.angle = 0;
}
if (inRange(GetTimer(), 8500,8800, 40))
{
	var _rnd = irandom(3)
	bladeCreate(battle_soul.x, battle_soul.y, irandom(360), 0.8);
	BlueSoulControl(_rnd*90);
	if(_rnd==0)
	{
		boneWall(DIR.RIGHT, 50,0,20,5,10);
		leftDB(5, 60, 0, 1);
		leftUB(5, 60, 0 ,1);		
	}
	else if (_rnd==1)
	{
		downRB(5, 60, 0, 1);
		downLB(5, 60, 0 ,1);	
		boneWall(DIR.UP, 50,0,20,5,10);
	}
	else if (_rnd==2)
	{
		boneWall(DIR.LEFT, 50,0,20,5,10);
		rightDB(5, 60, 0, 1);
		rightUB(5, 60, 0 ,1);	
	}
	else if (_rnd==3)
	{
		upRB(5, 60, 0, 1);
		upLB(5, 60, 0 ,1);	
		boneWall(DIR.DOWN, 50,0,20,5,10);
	}
}
if (time == 8800)
{
	Battle_SetSoul(battle_soul_red);
	index2 = irandom(30)
}
if (inRange(GetTimer(), 8800, 8900, 5))
{
	//downLB(2.25, 65, 0);
	upRB(5, 65+sin(time*0.05+index2)*30-30, 0);
	downRB(5, 65-sin(time*0.05+index2)*30, 0);

}
if (inRange(GetTimer(), 8800, 8900, 30))
{
	var a = bladeCreate(battle_soul.x, battle_soul.y, 0, 0.8, 0, 5);
}
room_speed = 60
