/// @description Insert description here
live_auto_call
if (_canHurt)
{
	if (_color == 0)
	{
		Battle_CallSoulEventHurt();
		if(battle.kr)
		{
			Player_HurtKR()
		}
		else
		{
			Player_Hurt(Battle_GetDamage(damage_multipy));
		}
	}
	if (_color == 1)
	{
	    if(Input_IsHeld(INPUT.UP)||Input_IsHeld(INPUT.DOWN)||Input_IsHeld(INPUT.LEFT)||Input_IsHeld(INPUT.RIGHT)||Input_IsPressed(INPUT.UP)||Input_IsPressed(INPUT.DOWN)||Input_IsPressed(INPUT.LEFT)||Input_IsPressed(INPUT.RIGHT))
		{
			//Player_Hurt(1);
			Battle_CallSoulEventHurt();
			if(battle.kr)
			{
			Player_HurtKR()
			}else
			{
			Player_Hurt(Battle_GetDamage(damage_multipy));
			}
		}
	}
	if (_color == 2)
	{
	    if(!(Input_IsHeld(INPUT.UP)||Input_IsHeld(INPUT.DOWN)||Input_IsHeld(INPUT.LEFT)||Input_IsHeld(INPUT.RIGHT)||Input_IsPressed(INPUT.UP)||Input_IsPressed(INPUT.DOWN)||Input_IsPressed(INPUT.LEFT)||Input_IsPressed(INPUT.RIGHT)))
		{
			//Player_Hurt(1);
			Battle_CallSoulEventHurt();
			if(battle.kr)
			{
				Player_HurtKR()
			}
			else
			{
				Player_Hurt(Battle_GetDamage(damage_multipy));
			}
		}
	}
}