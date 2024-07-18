/// @description Insert description here
live_auto_call

type = 0;
time = 0;
body = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_UbP3_Bodies,
	alpha : 1
}
legs = 
{
	x0 : x,
	y0 : y,
	x1 : x,
	y1 : y,
	index : 0, 
	sprite : Spr_UbP3_Legs1,
	alpha : 1
}
head = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_UbP3_Heads,
	alpha : 1
}
capes = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_CnrP3_Capes1,
	alpha : 1
}
lost = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_CnrP3_Lost2,
	alpha : 1
}
arm0 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_UbP3_Heads,
	alpha : 1
}
arm1 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_UbP3_Heads,
	alpha : 1
}

anim0 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_UbP3_Animation3,
	alpha : 1
}
anim1 = 
{
	x : x+1000000000,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_UbP3_Animation4,
	alpha : 1
}
anim2 = 
{
	x : x+1000000000,
	y : y,
	angle : image_angle,
	scale : 1,
	index : 0, 
	sprite : Spr_UbP3_Animation1,
	alpha : 1
}
anim3 = 
{
	x : x+1000000000,
	y : y,
	angle : image_angle,
	scale : 1,
	index : 0, 
	sprite : Spr_UbP3_Animation2,
	alpha : 1
}
anim4 = 
{
	x : x+1000000000,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_UbP3_Animation4,
	alpha : 1
}
anim5 = 
{
	x : x+1000000000,
	y : y,
	angle : image_angle,
	scale : -1,
	index : 0, 
	sprite : Spr_UbP3_Animation1,
	alpha : 1
}
anim6 = 
{
	x : x+1000000000,
	y : y,
	angle : image_angle,
	scale : -1,
	index : 0, 
	sprite : Spr_UbP3_Animation2,
	alpha : 1
}
squs = [];
var i = 0;
repeat(8)
{
	var squ = 
	{
		x : x+1000000000,
		y : y,
		angle : image_angle,
		scale : 0,
		index : 0, 
		sprite : sBorder,
		blend : c_yellow,
		alpha : 0
	}
	squs[i] = squ;
	i ++;
}
_len = 0;
_spd = 0;
_scale = 0;
_start = false;
_alpha = 0;
array = [body, head];