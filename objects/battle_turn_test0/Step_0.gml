/// @description Insert description here
live_auto_call
room_speed = 60
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
	instance_create_depth(320,320,DEPTH_BATTLE.FADER, oCtt3BackGround);
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
	sUbGb0 = instance_create_depth(320,320,DEPTH_BATTLE.ENEMY, oSprite);
	sUbGb0.sprite_index = Spr_UbP21_GB
	sUbGb1 = instance_create_depth(320,320,DEPTH_BATTLE.ENEMY, oSprite);
	sUbGb1.sprite_index = Spr_UbP22_GB
	instance_create_depth(320, 320-80, DEPTH_BATTLE.ENEMY, battle_enemy_gaster);




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


	

if (time > 3910)
{
	sUbGb0.x = 320-160;
	sUbGb1.x = 320+160;
	sUbGb0.y = 320-220+sin(time*0.05)*10;
	sUbGb1.y = 320-220-sin(time*0.05)*0;
	sUbGb0.image_xscale = 2;
	sUbGb0.image_yscale = 2;
	sUbGb1.image_xscale = 2;
	sUbGb1.image_yscale = 2;
	camera.x = sin(time*0.05)*15;
	camera.angle = cos(time*0.05)*1.5;
}