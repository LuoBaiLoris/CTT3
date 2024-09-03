inst.image_angle=image_angle
inst.x=x
inst.y=y
time++
direction=image_angle
effect=instance_create_depth(x,y,depth,obj_blue_gb_effect)
effect.image_xscale=0.45
effect.image_yscale=0.45
effect.image_angle=image_angle
if time>=time_move
if place_meeting(x,y,battle_soul) and sj=0
{
	if Player_GetHp()>20
Player_Hurt(20)
else if Player_GetHp()<20 and Player_GetHp()+Player_GetKR()>20
{
	var hurt=Player_GetHp()
Player_Hurt(hurt-1)
Player_SetKR(Player_GetKR()-20+hurt-1)
}
else if Player_GetHp()+Player_GetKR()<=20
Player_Hurt(20)
Camera_Shake(5,5,1,1)
audio_play_sound(snd_hurt,0,0,5)
sj+=1
}