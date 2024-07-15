live_auto_call
event_inherited();

//beam._width = _width;


//rotate = 4
var _frame = 5;
if (_step >= 1)
{
	
	
	if instance_exists(beam)
	{
		beam.image_yscale = _width*0.725;
		beam.x = x + lengthdir_x(sprite_width/2, image_angle);
		beam.y = y + lengthdir_y(sprite_width/2, image_angle);
		beam.image_angle = image_angle;
		posSpd.x -= 0.8;
	}
}
switch(_step)
{
	case 0:
		if !(_stepStart)
		{
			frame = -1;
			_stepStart = true;
		}
		else
		{
			frame ++;
			if (frame == waitTime + preTime)
			{
				_step = 1;
				_stepStart = false;
				//_width = image_yscale*1.75;

			}
			
		}
	break;
	case 1:
		if !(_stepStart)
		{
			frame = -1;
			_stepStart = true;
			beam._canHurt = true;
			beam.image_alpha = 1;
			
			animCreate(id, "_index", ANIM_TWEEN.SINE, 0, 0, 0, 5, _frame)
			animCreate(id, "_width", ANIM_TWEEN.SINE, 0, 0, 0, image_yscale*1.75, _frame)
		}
		else
			{
			frame ++;
			if (frame == _frame)
			{
				//cameraShake(15, 5)
				beam.image_alpha = 1;
				_width = image_yscale*1.75;
				beam._canHurt = true;
			}
			if (frame > _frame)
			{
				 _sinTimer ++;
				_width = (image_yscale*1.75)+sin(_sinTimer*0.25)*(image_yscale*1.75*0.1);
			}
			if (frame == keepTime)
			{
				_step = 2;
				_stepStart = false;
				
			}
			
		}
	break;
	case 2:
		if !(_stepStart)
		{
			frame = -1;
			_stepStart = true;
			beam._canHurt = true;
			animCreate(id, "_width", ANIM_TWEEN.LINEAR, 0, 1, _width, 0, 10)
			animCreate(beam, "image_alpha", ANIM_TWEEN.SINE, 0, 1, 1, 0, 15)
		}
		else
			{
			frame ++;
			if (pos.x < -640)
			{
				posSpd.x = 0;
				if (_width <= 0)
				{
					instance_destroy();
					instance_destroy(beam);
				}	
			}		
		}
	break;
}
//show_debug_message(center)