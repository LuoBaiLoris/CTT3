/// @description Insert description here
live_auto_call
//show_debug_message(1)


time ++;
legs.x1 = x;
legs.y1 = y;
if (type == 0)
{
	array = [cnrLost, anim0, cnrSoul];

	anim0.x = x;
	anim0.y = y;
	//show_debug_message(anim0.index)
}

if (type == 1)
{
	array = [body, head];
	body.sprite = Spr_COTVP3_Bodies;
	head.sprite = Spr_COTVP3_Heads;
	legs.sprite = Spr_COTVP3_Legs;
	var spd = 0.1;
	body.x = x-5+sin(time*spd*0.5-0.2)*3;
	body.y = y-240+150-5-sin(time*spd)*3;
	head.x = x-3+sin(time*spd*0.5-0.2)*5;
	head.angle = -sin(time*spd*0.5-0.2)*2;
	body.angle = -sin(time*spd*0.5-0.2)*2;
	head.y = y-240+100-5-sin(time*spd-0.2)*4;

	legs.x0 = x+sin(time*spd*0.5)*3;
	legs.x1 = x;
	legs.y0 = y-sin(time*spd)*3;
	
	
}
if (type == 2)
{
	array = [ hand0,hand1,body, head];
	body.sprite = Spr_COTVP3_Bodies;
	head.sprite = Spr_COTVP3_Heads;
	legs.sprite = Spr_COTVP3_Legs;
	hand0.sprite = Spr_COTVP3_Hands3;
	hand1.sprite = Spr_COTVP3_Hands4;
	body.index = 5;
	var spd = 0.1;
	body.x = x-5+sin(time*spd*0.5-0.2)*3;
	body.y = y-240+150-5-sin(time*spd)*3;
	head.x = x-3+sin(time*spd*0.5-0.2)*5;
	head.angle = -sin(time*spd*0.5-0.2)*2;
	body.angle = -sin(time*spd*0.5-0.2)*2;
	head.y = y-240+100-5-sin(time*spd-0.2)*4;

	legs.x0 = x+sin(time*spd*0.5)*3;
	legs.x1 = x;
	legs.y0 = y-sin(time*spd)*3;
	
	var angle = 180-30;
	hand0.x = body.x+lengthdir_x(39,150+body.angle);
	hand0.y = body.y+lengthdir_y(39,150+body.angle);
	
	hand1.x = body.x+lengthdir_x(39,30+body.angle);
	hand1.y = body.y+lengthdir_y(39,30+body.angle)
	
	hand0.angle = sin(time*spd*0.5+0.5)*5;
	hand1.angle = sin(time*spd*0.5)*5;
	
}