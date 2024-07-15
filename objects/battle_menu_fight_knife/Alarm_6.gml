if(_input_acceptable=true){
var _speed=65
if(_dir==DIR.RIGHT){
	Anim_Create(id,"_aim_x",ANIM_TWEEN.LINEAR,0,_aim_x,battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim),_speed);
}else{
	Anim_Create(id,"_aim_x_1",ANIM_TWEEN.LINEAR,0,_aim_x_1,-(battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)),_speed);
}}