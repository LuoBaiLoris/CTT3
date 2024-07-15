/// @description Insert description here
live_auto_call
x = 320-80
type = 0;
time = 0;
body = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_COTVP3_Bodies,
	alpha : 1
}
legs = 
{
	x0 : x,
	y0 : y,
	x1 : x,
	y1 : y,
	index : 0, 
	sprite : Spr_COTVP3_Legs,
	alpha : 1
}
head = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_COTVP3_Heads,
	alpha : 1
}
hand0 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_COTVP3_Hands1,
	alpha : 1
}
hand1 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_COTVP3_Hands2,
	alpha : 1
}
anim0 = 
{
	x : x,
	y : y,
	angle : image_angle,
	scale : 2,
	index : 0, 
	sprite : Spr_COTVP3_Animation,
	alpha : 1
}
array = [body, head, anim0];