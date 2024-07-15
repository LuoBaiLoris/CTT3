///@arg pause,length,duration,*type,*obj,*spr
function Battle_MakeBoneWallLeft(){
    var PAUSE = argument[0]
    var LENGTH = argument[1]
    var DURATION = argument[2]
    var COLOR = (0 << 0)
	var OBJ=battle_bullet_bone
	var SPR=spr_bone
    if (argument_count >= 4)
        COLOR = argument[3]
    if (argument_count >= 5)
        OBJ = argument[4]
    if (argument_count >= 6)
        SPR = argument[5]
	var SPR_HEIGHT=sprite_get_width(SPR)+1
    var ii = 0
    for (i = 0; i < ((battle_board.up + battle_board.down) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		if(DURATION!=-1){
        b[ii] = Battle_MakeBoneH((((battle_board.x - battle_board.left) - (LENGTH / 2)) - 5), ((battle_board.y - battle_board.up) + i), LENGTH, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 24),OBJ,SPR)
		}else{
		b[ii] = Battle_MakeBoneH((((battle_board.x - battle_board.left) - (LENGTH / 2)) - 5), ((battle_board.y - battle_board.up) + i), LENGTH, 0, 0, COLOR, 0, 0, 0, DURATION,OBJ,SPR)
		}
		with (b[ii])
        {
            Anim_Create(id, "x", 0, 0, x, LENGTH, 8, PAUSE)
			if(DURATION!=-1){
            Anim_Create(id, "x", 0, 0, (x + LENGTH), ((-LENGTH) * 2), 16, ((16 + PAUSE) + DURATION))}
            a = instance_create_depth(0, 0, 0, shaker)
            a.target = id
            a.var_name = "y"
            a.shake_distance = 2
            a.shake_speed = 1
            a.shake_random = 0
            a.shake_decrease = 1
            a.delay = (PAUSE + 8)
        }
    }
    a = instance_create_depth(0, 0, 0, bone_box)
    a.duration = PAUSE
    a.x1 = ((battle_board.x - battle_board.left) + 1)
    a.y1 = ((battle_board.y - battle_board.up) + 1)
    a.x2 = (((battle_board.x - battle_board.left) + LENGTH) - 2)
    a.y2 = ((battle_board.y + battle_board.down) - 2)
    audio_stop_sound(snd_exclamation)
    audio_play_sound(snd_exclamation, 0, false)
    return;
}