/// @description Insert description here
live_auto_call

if (_canHurt)
{
	if(battle_soul._inv=0)
	{
		if(battle.shielding=0)
		{
			Battle_CallSoulEventHurt();

			Player_Hurt(10);
		}
	}
}
