/// @description Insert description here
live_auto_call
//show_debug_message(1)
time ++;
if (type == 0)
{
	array = [body,hand0,hand1,hand2,hand3,hand4,hand5,head];
	head.x = 320;
	head.y = 90;
	var spd = 0.05;
	hand0.x = 320+160;
	hand0.y = 20+sin(time*spd+0.1)*5;
	
	hand2.x = 320+160+30;
	hand2.y = 130-20+sin(time*spd+0.2)*5;
	
	hand4.x = 320+160;
	hand4.y = 220+sin(time*spd+0.5)*5;
	
	hand1.x = 320-160;
	hand1.y = 20+sin(time*spd+0.7)*5;
	
	hand3.x = 320-160-60-20;
	hand3.y = 130-80-20+sin(time*spd+0.3)*5;
	
	hand5.x = 320-160;
	hand5.y = 220+sin(time*spd+0.4)*5;
	
	hand0.angle = abs(sin(time*0.03)*15);
	hand1.angle = -abs(sin(time*0.03)*15);
	hand2.angle = abs(sin(time*0.03)*15);
	hand3.angle = -abs(sin(time*0.03)*15);
	hand4.angle = abs(sin(time*0.03)*15);
	hand5.angle = -abs(sin(time*0.03)*15);
	
	
	body.scale = 2+sin(time*0.05)*0.05;
	head.y = 90-sin(time*0.05)*5;
}
