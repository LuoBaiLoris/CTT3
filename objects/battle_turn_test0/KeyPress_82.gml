/// @description Insert description here
live_auto_call

//instance_destroy()
SetTimer(7010);
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



instance_destroy(oAutoDestory);
instance_destroy(battle_bullet);
instance_destroy(oSprite);
instance_destroy(oText);
instance_destroy(battle_enemy_ub);
instance_destroy(battle_enemy_cnr);
instance_destroy(battle_enemy_ukb);
instance_destroy(battle_enemy_cotv);
instance_destroy(battle_enemy_gaster);

instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_cotv);
instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_cnr);
instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_ub);
instance_create_depth(x, y, DEPTH_BATTLE.ENEMY, battle_enemy_ukb);
instance_create_depth(320, 320-80, DEPTH_BATTLE.ENEMY, battle_enemy_gaster);
sUbGb0 = instance_create_depth(320,320,DEPTH_BATTLE.ENEMY, oSprite);
sUbGb0.sprite_index = Spr_UbP21_GB;
sUbGb1 = instance_create_depth(320,320,DEPTH_BATTLE.ENEMY, oSprite);
sUbGb1.sprite_index = Spr_UbP22_GB;
sUbGb0.x = 320-160;
sUbGb1.x = 320+160;



instance_destroy(oCtt3BackGround);
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


instance_destroy(oShdBloom);
instance_destroy(oShdBlur);
instance_destroy(oShdShadow);
instance_destroy(oShdRadialBlur);
instance_destroy(oShdGlitch);