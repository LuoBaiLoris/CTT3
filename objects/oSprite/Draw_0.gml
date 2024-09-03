live_auto_call

if (!_gui) 
{
	if(!mask){
	depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
	draw_self()
}else{
	depth=DEPTH_BATTLE.BULLET
	surface_set_target(Battle_GetBoardSurface());{
		draw_self()
	}surface_reset_target();
}

}











