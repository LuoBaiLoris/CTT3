/// @description Insert description here
live_auto_call
time ++;
legs.x1 = x;
legs.y1 = y;
if (type == 0)
{
	array = [arm0, arm1,body, head];
	body.sprite = Spr_UkbP3_Bodies;
	head.sprite = Spr_UkbP3_Heads;
	legs.sprite = Spr_UkbP3_Legs;
	arm0.sprite = Spr_UkbP3_Hands8;
	arm1.sprite = Spr_UkbP3_Hands6;
	
	
	body.x = x//+sin(time*0.05/2-0.2)*3;
	body.y = y-240+150+sin(time*0.05)*6;
	head.x = x//-2+sin(time*0.05/2-0.2)*3;
	head.y = y-240+100-5+sin(time*0.05-0.2)*7+3;
	legs.x0 = x+5//+5+sin(time*0.05/2-0.2)*3;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*0.05)*5;
	
	arm0.x = x-30-2//+sin(time*0.05/2-0.2)*3;
	arm0.y = y-20-240+150+sin(time*0.05)*6;
	arm0.angle = -1-sin(time*0.05)*5;
	arm1.x = x+30+7//+sin(time*0.05/2-0.2)*3;
	arm1.y = y-20-240+150+sin(time*0.05)*6;
	arm1.angle = 1+sin(time*0.05)*5;
	arm0.scale = 2;
	arm1.scale = 2;
}
if (type == 1)
{
	array = [arm0, arm1,body,  head,arm2, arm3];
	body.sprite = Spr_UkbP3_Bodies;
	head.sprite = Spr_UkbP3_Heads;
	legs.sprite = Spr_UkbP3_Legs;
	arm0.sprite = Spr_UkbP3_Hands8;
	arm1.sprite = Spr_UkbP3_Hands6;
	arm2.sprite = Spr_UkbP3_Hands6;
	arm3.sprite = Spr_UkbP3_Hands14;
	
	if (keyboard_check_pressed(vk_space))
	{
		//time = -1;
	}
	if (time == 0)
	{
		
		//TweenFire(arm1, EaseLinear, "once", false, 0, 12, "index", 0, 6);
	}
	
	if (time == 10)
	{
		
		//TweenFire(arm1, EaseLinear, "once", false, 0, 10, "index", 0, 5);
	}
	arm2.index = arm1.index;
	if (arm1.index > 1 && arm1.index < 5){arm1.alpha = 0;arm2.alpha = 1;arm3.alpha = 0;}else if(arm1.index >5){arm1.alpha = 0;arm2.alpha = 0;arm3.alpha = 1}else if(arm1.index ==0){arm1.alpha = 1;arm2.alpha = 0;arm3.alpha = 0}
	//if (arm1.index > 5 ){arm1.index = 0;}
	var spd = 0.12;
	body.x = x+sin(time*spd/2-0.2)*3;
	body.y = y-240+150+sin(time*spd)*3;
	head.x = x+sin(time*spd/2-0.2)*3;
	head.y = y-240+100-5+sin(time*spd-0.2)*3+3;
	legs.x0 = x+5+sin(time*spd/2-0.2)*3;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*spd)*3;
	
	arm0.x = x-30-2+sin(time*spd/2-0.2)*3;
	arm0.y = y-20-240+150+sin(time*spd)*3;
	arm0.angle = -1-sin(time*spd*0.5)*5;
	arm1.x = x+30+2+4+sin(time*spd/2-0.2)*3;
	arm1.y = y-20-240+150+sin(time*spd)*3;
	arm2.x = x+30+2+4+sin(time*spd/2-0.2)*3;
	arm2.y = y-20-240+150+sin(time*spd)*3;
	arm1.angle = 1-sin(time*spd*0.5)*5;
	arm2.angle = 1-sin(time*spd*0.5)*5;
	arm0.scale = 2;
	arm1.scale = 2;
	
	arm3.x = x+30+2+4+sin(time*spd/2-0.2)*3;
	arm3.y = y-20-240+150+sin(time*spd)*3;
	arm3.angle = 1-sin(time*spd*0.5)*5;
	arm3.index +=0.1;
}
if (type == 2)
{
	array = [arm0,body,  head,arm3];
	body.sprite = Spr_UkbP3_Bodies;
	head.sprite = Spr_UkbP3_Heads;
	legs.sprite = Spr_UkbP3_Legs;
	arm0.sprite = Spr_UkbP3_Hands8;
	arm1.sprite = Spr_UkbP3_Hands6;
	arm2.sprite = Spr_UkbP3_Hands6;
	arm3.sprite = Spr_UkbP3_Hands14;
	//head.index = 26;
	arm2.index = arm1.index;
	if (arm1.index > 1 ){arm1.alpha = 0;arm2.alpha = 1;}else{arm1.alpha = 1;arm2.alpha = 0;}
	if (arm1.index > 5 ){arm1.index = 0;}
	var spd = 0.07;
	body.x = x//+sin(time*spd/2-0.2)*3;
	body.y = y-240+150+sin(time*spd)*3;
	head.x = x//+sin(time*spd/2-0.2)*3;
	head.y = y-240+100-5+sin(time*spd-0.2)*3+3;
	legs.x0 = x+5//+sin(time*spd/2-0.2)*3;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*spd)*3;
	
	arm0.x = x-30-2//+sin(time*spd/2-0.2)*3;
	arm0.y = y-20-240+150+sin(time*spd)*3;
	arm0.angle = -1-sin(time*spd)*5;
	arm1.x = x+30+2+4//+sin(time*spd/2-0.2)*3;
	arm1.y = y-20-240+150+sin(time*spd)*3;
	arm2.x = x+30+2+4//+sin(time*spd/2-0.2)*3;
	arm2.y = y-20-240+150+sin(time*spd)*3;
	arm1.angle = 1+sin(time*spd)*5;
	arm2.angle = 1+sin(time*spd)*5;
	arm0.scale = 2;
	arm1.scale = 2;
	arm3.x = x+30+2+4//+sin(time*spd/2-0.2)*3;
	arm3.y = y-20-240+150+sin(time*spd)*3;
	arm3.angle = 1+sin(time*spd)*5;
	arm3.alpha = 1;
	arm3.index +=0.1;
}
if (type == 3)
{
	array = [arm0,body,  head,arm3];
	body.sprite = Spr_UkbP3_Bodies;
	head.sprite = Spr_UkbP3_Heads;
	legs.sprite = Spr_UkbP3_Legs;
	arm0.sprite = Spr_UkbP3_Hands10;

	arm3.sprite = Spr_UkbP3_Hands14;
	//head.index = 26;
	arm2.index = arm1.index;
	var spd = 0.07;
	body.x = x//+sin(time*spd/2-0.2)*3;
	body.y = y-240+150+sin(time*spd)*3;
	head.x = x//+sin(time*spd/2-0.2)*3;
	head.y = y-240+100-5+sin(time*spd-0.2)*3+3;
	legs.x0 = x+5//+sin(time*spd/2-0.2)*3;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*spd)*3;
	
	arm0.x = x-30-2//+sin(time*spd/2-0.2)*3;
	arm0.y = y-20-240+150+sin(time*spd)*3;
	arm0.angle = 10+sin(time*spd)*5;
	arm0.scale = 2;
	arm3.x = x+30+2+4//+sin(time*spd/2-0.2)*3;
	arm3.y = y-20-240+150+sin(time*spd)*3;
	arm3.angle = 1+sin(time*spd)*5;
	arm3.alpha = 1;
	arm3.index +=0.1;
	arm0.index +=0.2;
}

if (type == 4)
{
	array = [arm0,body,  head,arm3, fire0, fire1];
	body.sprite = Spr_UkbP3_Bodies;
	head.sprite = Spr_UkbP3_Heads;
	legs.sprite = Spr_UkbP3_Legs;
	arm0.sprite = Spr_UkbP3_Patches_Hand2
	arm3.sprite = Spr_UkbP3_Patches_Hand1;
	fire0.sprite = Spr_UkbP3_Fire1
	fire1.sprite = Spr_UkbP3_Fire2;
	//head.index = 26;
	arm2.index = arm1.index;
	var spd = 0.1;
	var valx = 5;
	var valy = 5;
	body.x = x+sin(time*spd/2-0.2)*valx;
	body.y = y-240+150+sin(time*spd)*valy;
	head.x = x+sin(time*spd/2)*(valx+1)-1;
	head.y = y-240+100-5+sin(time*spd-0.2)*valy+3;
	
	
	fire0.x = x+sin(time*spd/2)*(valx+1)-1-16;
	fire0.y = y-240+100-5+sin(time*spd-0.2)*valy+3;
	fire1.x = x+sin(time*spd/2)*(valx+1)-1+40;
	fire1.y = y-240+100-5+sin(time*spd-0.2)*valy+3;
	
	
	head.angle = -sin(time*spd/2)*2;
	legs.x0 = x+5+sin(time*spd/2-0.2)*valx;
	legs.x1 = x+5;
	legs.y0 = y+sin(time*spd)*valy;

	arm0.x = x-30-2-10+sin(time*spd/2-0.2)*valx;
	arm0.y = y-20-240+150+sin(time*spd)*valy;
	arm0.angle = 10-sin(time*spd*0.5)*5;
	arm0.scale = 2;
	arm3.x = x+30+2+4+sin(time*spd/2-0.2)*valx;
	arm3.y = y-20-240+150+sin(time*spd)*valy;
	arm3.angle = 1-sin(time*spd*0.5)*5;
	arm3.alpha = 1;
	arm3.index +=0.2;
	arm0.index +=0.2;
	fire0.index +=0.2;
	fire1.index +=0.2;
	
	fire0.alpha = 0.8;
	fire1.alpha = 0.8;
}