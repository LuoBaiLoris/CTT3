live_auto_call
time = -1;

Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,65)
audio = audio_play_sound(bgmOverinterapcide, 0, 1);
Player_SetHpMax(32);
Player_SetHp(32);
Player_SetLv(12);
animation0 = instance_create_depth(0,0,0,oAnimation0);
//dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
//dialog.text="{speed 3}{font 0}Dialog Test&{voice 1}Dialog Test&{font 3}{voice 3}Dialog Test&{font 3}对话测试{pause}{clear}{font 0}{voice 0}对话测试&{font 4}{voice 4}DIALOG TEST&{font 4}对话测试&{font 5}{voice 6}DIALOG TEST{pause}{clear}{font 6}{voice 0}对话测试&Dialog Test{font 7}&对话测试&Dialog Test"