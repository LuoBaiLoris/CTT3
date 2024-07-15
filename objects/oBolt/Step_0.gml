if (live_call()) return live_result;
event_inherited();
warnTimer --;
index += 0.2;
if (p == 0)
{
	if (warnTimer < 0)
	{
		p = 1;
	}
}
else if (p == 1)
{

	//audio_stop_sound(snd_bolt)
	//audio_play_sound(snd_bolt,0,0)
	
	p = 2;
}
else if (p == 2)
{

		
		sprite_index = sBolt;
		image_speed = 0;
		//cameraShake(10, 10);
		animCreate(id, "image_alpha", 0, 0, 1, 1, 0, 30)
		animCreate(id, "image_xscale", ANIM_TWEEN.CIRC, 2, 1, image_xscale, image_xscale*0.5, 20,5)
		//Anim_Create(id,"image_xscale",7,1,image_xscale,-image_xscale,20,20);
		p = 3;

}
if (image_alpha == 0)
{
	instance_destroy();
}
if (image_alpha > 0.85)
{
	if (_canHurt)
	{

	}
}