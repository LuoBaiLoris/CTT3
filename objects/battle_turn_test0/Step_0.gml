/// @description Insert description here
live_auto_call
room_speed = 60
if abs(audio_sound_get_track_position(bgmOverinterapcide)-(GetTimer()/60)) > 0.02
{
	if (audio_is_playing(bgmOverinterapcide))
	{
		audio_sound_set_track_position(bgmOverinterapcide, GetTimer()/60);
	}
	else
	{
		audio_play_sound(bgmOverinterapcide, 0,0);
	}
}
event_inherited();
//camera.x = sin(timer*0.05)*15;
//camera.angle = cos(timer*0.05)*1.5;
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
