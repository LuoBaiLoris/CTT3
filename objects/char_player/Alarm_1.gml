/// @description back to lobby
Anim_Create(fader,"alpha",ANIM_TWEEN.LINEAR,0,0,0,0)
Player_Load(Flag_GetSaveSlot())
room_goto(room_lobby)