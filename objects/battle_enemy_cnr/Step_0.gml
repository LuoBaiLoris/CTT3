/// @description Insert description here
live_auto_call
//show_debug_message(1)

time ++;
legs.x1 = x;
legs.y1 = y;
if (type == 0)
{
	array = [capes, body, head, lost];
	body.sprite = Spr_CnrP3_Bodies1;
	capes.sprite = Spr_CnrP3_Capes1;
	head.sprite = Spr_CnrP3_Heads;
	legs.sprite = Spr_CnrP3_Legs1;
	
	
	body.x = x;
	body.y = y-240+150-5+sin(time*0.05)*6;
	capes.x = x;
	capes.y = y-240+150-30+sin(time*0.05)*5;
	head.x = x;
	head.y = y-240+100-5+sin(time*0.05-0.2)*6;
	lost.x = x;
	lost.y = y-240+100-16+sin(time*0.05-0.2)*6;
	lost.index += 0.01;
	capes.index += 0.05;
	legs.x0 = x+5;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*0.05)*5;
}
if (type == 1)
{
	array = [capes, hands2	, body, head, lost, hands1];
	body.sprite = Spr_CnrP3_Bodies2;
	capes.sprite = Spr_CnrP3_Capes2;
	head.sprite = Spr_CnrP3_Heads;
	legs.sprite = Spr_CnrP3_Legs2;
	
	hands1.x = x+15+3;
	hands1.y = y+3+10-240+150-5+sin(time*0.05-0.2)*6;
	hands1.angle = -sin(time*0.05-0.2)*3;
	hands2.x = x+3-15-19;
	hands2.y = y+10+3-20-240+150-5+sin(time*0.05-0.2)*6;
	hands2.angle = sin(time*0.05-0.2)*6;
	
	body.x = x+3;
	body.y = y+3+5-240+150-5+sin(time*0.05)*6;
	capes.x = x+3;
	capes.y = y+3-10-240+150-30+sin(time*0.05)*5;
	head.x = x+3-7;
	head.y = y+3-240+100-5+sin(time*0.05-0.2)*6;
	lost.x = x+3-7;
	lost.y = y+3-240+100-16+sin(time*0.05-0.2)*6;
	lost.index += 0.01;
	capes.index += 0.05;
	legs.x0 = x+5;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*0.05)*5;
}