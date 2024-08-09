/// @description Insert description here
live_auto_call
instance_destroy(oAutoDestory)
instance_destroy(oBoneRing)
//instance_destroy()
SetTimer(4000);
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
	

sUbGb0.x = 320-160;
sUbGb1.x = 320+160;

camera.scale_x = 1;
camera.scale_y = 1;
camera.target = noone;
camera.x = 0;
camera.y = 0;