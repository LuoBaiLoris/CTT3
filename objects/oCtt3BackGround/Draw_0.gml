/// @description Insert description here
live_auto_call
//show_debug_message(1)
draw_sprite_ext(sPx2c, 0,320,480,640,480,0,c_black,1);



var size = (1+cos(time*0.05)*0.5);
draw_sprite_ext(spr_glow, 0,320,240,size,size,0,c_purple,1);
var size = (0.8+sin(time*0.05+0.2)*0.4);
draw_sprite_ext(spr_glow, 0,320,240,size,size,0,c_purple,0.75);
var size = (0.65+cos(time*0.05+0.82)*0.25);
draw_sprite_ext(spr_glow, 0,320,240,size,size,0,c_purple,0.5);
var size = (0.5+sin(time*0.05+0.35)*0.3);
draw_sprite_ext(spr_glow, 0,320,240,size,size,0,c_purple,0.25);
draw_sprite_ext(sPx2c, 0,320,480,640,480,0,c_black,0.1);

draw_set_font(font_menu);
for(var i = 0;i< 15;i++)
{
	var size = ((time*0.08+i*5)%15);
	draw_sprite_ext(sBack, 0,320,240,size,size,360/15*i+time,c_purple,sin(size/15));
	draw_sprite_ext(sBack, 0,320,240,size,size,360/15*i-time,c_purple,sin(size/15));

	//draw_sprite_ext(sBack, 0,320,240,size,size,360/15*i-time,c_purple,(15-size)/15);
}

var value = 20;
for(var i = 0;i< value;i++)
{
	var value = 20;
	var angle = time;
	var spd = 2.5;
	var length = 100+(sin(time*0.03)*90);
	var size = (2+sin(time*0.03)*1);
	draw_text_ext_transformed_color(320+lengthdir_x(length, 360/value*i+angle*spd), 240+lengthdir_y(length, 360/value*i+angle*spd), a20[i], 999, 999, size, size, 360/value*i+angle*spd+90+180, c_purple, c_purple, c_purple, c_purple, 1);
}

var value = 35;
for(var i = 0;i< value;i++)
{

	var angle = -time;
	var spd = 2;
	var length = 180+(cos(time*0.03)*100);
	var size = (3+cos(time*0.03)*1.5);
	draw_text_ext_transformed_color(320+lengthdir_x(length, 360/value*i+angle*spd), 240+lengthdir_y(length, 360/value*i+angle*spd), a40[i], 999, 999, size, size, 360/value*i+angle*spd+90+180-2, c_purple, c_purple, c_purple, c_purple, 1);

}
var value = 25;
for(var i = 0;i< value;i++)
{
	var angle = -time;
	var spd = 2.5;
	var length = 120+(sin(time*0.05)*60);
	var size = (2+cos(time*0.05)*0.5);
	draw_text_ext_transformed_color(320+lengthdir_x(length, 360/value*i+angle*spd), 240+lengthdir_y(length, 360/value*i+angle*spd), a30[i], 999, 999, size, size, 360/value*i+angle*spd+90+180, c_purple, c_purple, c_purple, c_purple, 1);
	
}
var value = 6;
for(var i = 0;i< value;i++)
{
	var angle = -time;
	var spd = 2.5;
	var length = 30;
	var size = 1.5;
	draw_text_ext_transformed_color(320+lengthdir_x(length, 360/value*i+angle*spd), 240+lengthdir_y(length, 360/value*i+angle*spd), a10[i], 999, 999, size, size, 360/value*i+angle*spd+90+180-9, c_purple, c_purple, c_purple, c_purple, 1);
	
}
var value = 15;
for(var i = 0;i< value;i++)
{
	var angle = time;
	var spd = 2;
	var length = 90+(sin(time*0.05)*10);
	var size = 2;
	draw_text_ext_transformed_color(320+lengthdir_x(length, 360/value*i+angle*spd), 240+lengthdir_y(length, 360/value*i+angle*spd), a15[i], 999, 999, size, size, 360/value*i+angle*spd+90+180, c_purple, c_purple, c_purple, c_purple, 1);
	
}
var value = 25;
for(var i = 0;i< value;i++)
{
	var angle = time;
	var spd = 2.5;
	var length = 250//+(sin(time*0.05)*60);
	var size = 3;
	draw_text_ext_transformed_color(320+lengthdir_x(length, 360/value*i+angle*spd), 240+lengthdir_y(length, 360/value*i+angle*spd), a30[i], 999, 999, size, size, 360/value*i+angle*spd+90+180, c_purple, c_purple, c_purple, c_purple, 1);
	
}
var size = 0.8;
//draw_sprite_ext(spr_glow, 0,320,240,size,size,0,c_purple,1);
draw_sprite_ext(sPx2c, 0,320,480,640,480,0,c_black,0.1);
draw_sprite_ext(sGlowAround, 0, 320, 240, 1,1, 0, c_black, 1)


