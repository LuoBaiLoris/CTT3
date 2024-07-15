///@arg x,length,hspeed,type,out,rotate,auto_destroy,*duration,*obj,*spr
function Battle_MakeBoneTop(){
    var X = argument[0]
    var LENGTH = argument[1]
    var HSPEED = argument[2]
    var COLOR = argument[3]
    var OUT = argument[4]
    var ROT = argument[5]
    var DESTROY = argument[6]
    var DURATION = -1
	var OBJ=battle_bullet_bone
	var SPR=spr_bone
    if (argument_count >= 8)
        DURATION = argument[7]
    if (argument_count >= 9)
        OBJ = argument[8]
    if (argument_count >= 10)
        SPR = argument[9]
    var bone = Battle_MakeBoneV(X, (((battle_board.y - battle_board.up) + (LENGTH / 2)) + 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION,OBJ,SPR)
	bone.angle+=180
    return bone;
}