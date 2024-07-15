if(battle_soul._inv=0){
if(battle.shielding=0&&Player_GetHp()>lock_hp){
	Battle_CallSoulEventHurt();
	if(battle.kr){
	Player_HurtKR()}else{
	Player_Hurt(Battle_GetDamage(damage_multipy));}
}}