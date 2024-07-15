/// @description Insert description here
live_auto_call
x = 320+80
type = 0;
time = 0;
body = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_CnrP3_Bodies1,
	alpha : 1
}
legs = 
{
	x0 : x,
	y0 : y,
	x1 : x,
	y1 : y,
	index : 0, 
	sprite : Spr_CnrP3_Legs1,
	alpha : 1
}
head = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_CnrP3_Heads,
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
hands1 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_CnrP3_Hands1,
	alpha : 1
}
hands2 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_CnrP3_Hands3,
	alpha : 1
}
array = [capes, body, head, lost, hands1, hands2];