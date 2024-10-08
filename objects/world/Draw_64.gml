draw_set_halign(fa_left)
draw_set_valign(fa_top)
if(global.mode=GAME_MODE.HARD){
	if(room=room_gameover){}else{
		draw_set_color(c_red)
		draw_set_font(font_mars_needs_cunnilingus)
		draw_text_scribble(500+(IsChs() ? 20 : 0),15,GetString("str_hardmode"))
}}
if(global.mode=GAME_MODE.EASY){
	if(room=room_gameover){}else{
		draw_set_color(c_lime)
		draw_set_font(font_mars_needs_cunnilingus)
		draw_text_scribble(500+(IsChs() ? 20 : 0),15,GetString("str_easymode"))
}}
if(global.tas=true){
	draw_set_halign(fa_right)
	draw_set_color(c_orange)
	draw_set_font(GetFont("font_menu"))
	if(global.mode!=0){var tempy=40}else{var tempy=15}
	draw_text_scribble(620,tempy,GetString("str_tas_hint"))
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_set_font(GetFont("font_menu"))
	draw_text_scribble(0,0,GetString("str_tas_warning"))
	
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_set_font(GetFont("font_menu"))
	draw_text_scribble(0,100,"collTime : "+string(global.collTime))
}
if(global.vape){draw_sprite_ext(spr_vape,0,camera.width-(sprite_get_width(spr_vape)*0.25),0,0.25,0.25,0,c_white,1)}
if(keyboard_check(vk_escape)&&!instance_exists(char_player)){
draw_set_font(GetFont("font_menu"))
if(quitting_timer=0){
quitting_text=GetString("str_quitting")}
draw_set_color(c_white)
if(quitting_timer>=0){
quitting_timer+=1}
if(quitting_timer=60||quitting_timer=100||quitting_timer=160){
quitting_text+="."}
if(quitting_timer>=180){
game_end()}
draw_text_transformed(0,0,quitting_text,2,2,0)
}else{
quitting_timer=0}