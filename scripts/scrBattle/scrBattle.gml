function getArenaWidth(_arena = battle_board)
{
	return _arena.right + _arena.left;
}
function getArenaHeight(_arena = battle_board)
{
	return _arena.up + _arena.down;
}
function getArenaX(_arena = battle_board)
{
	return _arena.x;
}
function getArenaY(_arena = battle_board)
{
	return _arena.y;
}
function getArenaAngle(_arena = battle_board)
{
	return _arena.image_angle;
}
function inRange(_val, _min, _max, _space = 0)
{
	if (_space > 0)
	{
		if ((_val % _space == 0) && (_val >= _min && _val < _max ))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	else
	{
		if ((_val >= _min) && (_val < _max ))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
}
function boneCreate(_x, _y, _angle, _length, _point = false, _color = 0, _atDest = true, _mask = false)
{
	var inst = instance_create_depth(_x, _y, LAYER.G-1, (_point ? oBulletBonePoint : oBulletBone));
	inst.length = _length;
	inst.image_xscale = _length/14;
	inst.angle = _angle;
	inst.image_angle = _angle;
	inst._color = _color;
	inst.mask = _mask;
	if (!is_bool(_atDest))
	{
		inst.alarm[1] = _atDest;
	}
	else
	{
		inst._atDest = _atDest;
	}
	switch(_color)
	{
		case 0:
			inst.image_blend = c_white;
		break;
		case 1:
			inst.image_blend = make_color_rgb(0, 255, 255);
		break;
		case 2:
			inst.image_blend = make_color_rgb(242, 135, 33);
		break;
	}
	return inst;
}
function boneRing(_x,_y, _number,_offset, _length, _rotate, _color = 0, _point = true, _angle = 0, _mask = true)
{
	var br = instance_create_depth(_x, _y, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, oBoneRing);
	br.x = _x;
	br.y = _y;
	br.number = _number;
	br.offset = _offset;
	br.rotate = _rotate;
	br._color = _color;
	br._point = _point;
	br.length = _length;
	br.angle = _angle;
	br.mask = _mask;
	with(br)
	{
		for(var i = 0;i<number;i++)
		{
			var bone = boneCreate(x+lengthdir_x(offset, image_angle+i*360/number), y+lengthdir_y(offset, image_angle+i*360/number),image_angle+i*360/number+90+angle, length, _point, _color, infinity, mask);
			array[i] = bone;
		}
	}
	return br;
}
function gbCreate(_preTime, _preX, _preY, _preAngle, _tarX, _tarY, _tarAngle, _xScale, _yScale, _waitTime = 30, _keepTime = 30)
{
	live_auto_call
	var _TWEEN = ANIM_TWEEN.EXPO;
	var _INDEX = 1;
	//	var _TWEEN = acGB;
	var _INDEX = 0;
	var inst = instance_create_depth(_preX, _preY, LAYER.J, oBulletGB);
	inst.angle = _preAngle;
	inst.center.angle = _preAngle;
	inst.angle = _preAngle;
	inst.image_xscale = _xScale;
	inst.image_yscale = _yScale;
	TweenFire(inst.center, EaseOutExpo, "once", false, 0, _preTime, "x", _preX, _tarX);
	TweenFire(inst.center, EaseOutExpo, "once", false, 0, _preTime, "y", _preY, _tarY);
	//TweenFire(inst.center, EaseOutExpo, "once", false, 0, _preTime, "angle", _preAngle, _tarAngle);
	TweenFire(inst.center, EaseOutExpo, "once", false, 0, _preTime, "image_angle", _preAngle, _tarAngle);
	//animCreate(inst.center, "x", _TWEEN, _INDEX, 1, _preX, _tarX, _preTime);
	//animCreate(inst.center, "y", _TWEEN, _INDEX, 1, _preY, _tarY, _preTime);
	//animCreate(inst.center, "angle", _TWEEN, _INDEX, 1, _preAngle, _tarAngle, _preTime);
	//animCreate(inst, "image_angle", _TWEEN, _INDEX, 1, _preAngle, _tarAngle, _preTime);

	inst.waitTime = _waitTime;
	inst.preTime = _preTime;
	inst.keepTime = _keepTime;
	return inst;
} 



function fireCreate(_x, _y, _angle, _size, _color = 0, _dest = infinity, _mask = false)
{
	var inst = instance_create_depth(_x, _y, LAYER.G, oBulletFire);
	inst.angle = _angle;
	inst._color = _color;
	inst.mask = _mask;
	inst.alarm[1] = _dest;
	switch(_color)
	{
		case 0:
			inst.image_blend = c_white;
		break;
		case 1:
			inst.image_blend = make_color_rgb(0, 255, 255);
		break;
		case 2:
			inst.image_blend = make_color_rgb(242, 135, 33);
		break;
	}
	inst.size = _size;
	inst.image_xscale = _size;
	inst.image_yscale = _size;
	return inst;
}
function starCreate(_x, _y, _angle, _size, _color = 0, _dest = infinity, _mask = false)
{
	var inst = instance_create_depth(_x, _y, LAYER.G, oBulletStar);
	inst.image_angle = _angle;
	inst.mask = _mask;
	inst._color = _color;
	inst.alarm[1] = _dest;
	switch(_color)
	{
		case 0:
			inst.image_blend = c_white;
		break;
		case 1:
			inst.image_blend = make_color_rgb(0, 255, 255);
		break;
		case 2:
			inst.image_blend = make_color_rgb(242, 135, 33);
		break;
	}
	inst.size = _size;
	inst.image_xscale = _size;
	inst.image_yscale = _size;
	return inst;
}
function bladeCreate(_x, _y, _angle, _size, _color = 0, _warnTime = 20)
{
	var inst = instance_create_depth(_x, _y, LAYER.G, oBlade);
	
	inst.image_angle = _angle;
	inst._warnTime = _warnTime;
	inst._color = _color;
	switch(_color)
	{
		case 0:
			inst.image_blend = c_white;
		break;
		case 1:
			inst.image_blend = make_color_rgb(0, 255, 255);
		break;
		case 2:
			inst.image_blend = make_color_rgb(242, 135, 33);
		break;
	}
	inst.image_xscale = _size*2;
	inst.image_yscale = _size*2;
	return inst;
}
function boltCreate(_x, _y, _warnTime = 30, _angle = 0, _size = 1)
{
	var a = instance_create_depth(_x,_y,LAYER.G,oBolt);
	a.image_angle = _angle;
	a.image_angle = _angle;
	a.image_xscale = _size;
	a.image_yscale = _size;
	a.warnTime = _warnTime;
	return a
}
function gunCreate(_x, _y, _angle, _moveTime, _offset)
{
	var inst = instance_create_depth(0,0,LAYER.G,oBulletGun);
	inst.targetmain.x = _x;
	inst.targetmain.y = _y;
	inst.image_angle = _angle;
	inst.moveTime = _moveTime;
	inst.offset = _offset;
}
/*
function slam(dir,slamSpeed = 10)
{
	if (room == rBattleCdstt)
	{
		oEnemyLoris. inpact(dir, 0);
	}
	if (room == rBattleLf)
	{
		oEnemyLfSans. inpact(dir, 0);
	}
	with(oPlayer)
	{
		_mode = SOULMODE.SLAM;
		angle = dir;
		image_angle = dir;
		_slamSpeed = slamSpeed;
		//_slamGra = slamGra;
		_slamEnd = false;
		_slamCd = -1;
		//_shd = true;
	}
}
*/
function downLB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x-_arena.left-10-offset,_arena.y+_arena.down,ang+90, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 0;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = -_arena.left-10-offset;
	//bone.pos.y = -_arena.up;
	//bone.posSpd.x = spd;
	return bone
}
function downRB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x+_arena.right+10+offset,_arena.y+_arena.down,ang+90, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 180;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = +_arena.right+10+offset;
	//bone.pos.y = -_arena.up;
	//bone.posSpd.x = -spd;
	return bone
}

function upLB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x-_arena.left-10-offset,_arena.y-_arena.up,ang-90, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 0;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = -_arena.left-10-offset;
	//bone.pos.y = _arena.up;
	//bone.posSpd.x = spd;
	return bone
}
function upRB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x+_arena.right+10+offset,_arena.y-_arena.up,ang-90, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 180;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = +_arena.right+10+offset;
	//bone.pos.y = _arena.up;
	//bone.posSpd.x = -spd;
	return bone
}

function leftDB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x-_arena.left,_arena.y+_arena.down+10+offset,ang, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 90;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = -_arena.left;
	//bone.pos.y = -_arena.up-10-offset;
	//bone.posSpd.y = spd;
	return bone
}
function leftUB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x-_arena.left,_arena.y-_arena.up-10-offset,ang, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 270;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = -_arena.left;
	//bone.pos.y = _arena.up+10+offset;
	//bone.posSpd.y = -spd;
	return bone
}
function rightDB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x+_arena.right,_arena.y+_arena.down+10+offset,ang-180, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 90;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = _arena.right;
	//bone.pos.y = -_arena.up-10-offset;
	//bone.posSpd.y = spd;
	return bone
}
function rightUB(spd, leng, ang, clr = 0, offset = 0, atDest = true)
{
	var _arena = battle_board;
	var bone = boneCreate(_arena.x+_arena.right,_arena.y-_arena.up-10-offset,ang-180, leng, true, clr, atDest, true);
	//bone.follow = true;
	bone._color = clr;
	bone.speed = spd;
	bone.direction = 270;
	//bone.coordSwitch = true;
	//bone.center.x = _arena.x;
	//bone.center.y = _arena.y;
	//bone.pos.x = _arena.right;
	//bone.pos.y = _arena.up+10+offset;
	//bone.posSpd.y = -spd;
	return bone
}
/*
function platCreate(_x, _y, _angle, _length, _type = 0, _dest = infinity, _mask = false)
{
	var inst = instance_create_depth(_x, _y, LAYER.G, oPlat);
	inst.angle = _angle;
	inst.type = _type;
	inst.mask = _mask;
	inst.alarm[1] = _dest;
	inst.length = _length;
	return inst;
}
*/
/*
function redSoul(ang)
{
	with(oPlayer)
	{
		_mode = SOULMODE.RED;
		angle = ang;
	}
}
function blueSoul(ang)
{
	with(oPlayer)
	{
		_mode = SOULMODE.BLUE;
		angle = ang;
	}
}
*/
function boneWall(_dir, _length, _space, _warnTime = 10, _moveTime = 10, _keepTime = 10)
{
	audio_stop_sound(snd_exclamation);
	audio_play_sound(snd_exclamation, 0, 0);
	var _val, _x, _y, _bones = [];
	//14
	switch(_dir)
	{
		case DIR.UP:
		{
			_val = floor(_arena.right/14)+2
			_x = getArenaX()+lengthdir_x(_arena.up, DIR.UP+getArenaAngle());
			_y = getArenaY()+lengthdir_y(_arena.up, DIR.UP+getArenaAngle());
		}
		break;
		case DIR.DOWN:
		{
			_val = floor(_arena.right/14)+2
			_x = getArenaX()+lengthdir_x(_arena.up, DIR.DOWN+getArenaAngle());
			_y = getArenaY()+lengthdir_y(_arena.up, DIR.DOWN+getArenaAngle());
		}
		break;
		case DIR.RIGHT:
		{
			_val = floor(_arena.up/14)+2
			_x = getArenaX()+lengthdir_x(_arena.right, DIR.RIGHT+getArenaAngle());
			_y = getArenaY()+lengthdir_y(_arena.right, DIR.RIGHT+getArenaAngle());
			//show_debug_message(1)
		}
		break;
		case DIR.LEFT:
		{
			_val = floor(_arena.up/14)+2
			_x = getArenaX()+lengthdir_x(_arena.right, DIR.LEFT+getArenaAngle());
			_y = getArenaY()+lengthdir_y(_arena.right, DIR.LEFT+getArenaAngle());
		}
		break;
	}
	switch(_dir)
	{
		case DIR.UP:
		case DIR.DOWN:
		{
			_val = floor(_arena.right/10)
		}
		break;
		case DIR.RIGHT:
		case DIR.LEFT:
		{
			_val = floor(_arena.up/10)
		}
		break;
	}
	
	var i = _val;
	repeat (_val)
	{
		var bone = boneCreate(_x+lengthdir_x(10*i+_space, _dir-90+getArenaAngle()), _y+lengthdir_y(10*i+_space, _dir-90+getArenaAngle()), (_dir+getArenaAngle())%360, _length+10, true, 0, infinity, true);
		array_insert(_bones, array_length(_bones), bone);
		i --;
	}
	var bone = boneCreate(_x, _y, (_dir+getArenaAngle())%360, _length+10, true, 0, infinity, true);
	array_insert(_bones, array_length(_bones), bone)
	var i = 0;
	repeat (_val)
	{
		i ++;
		var bone = boneCreate(_x+lengthdir_x(10*i+_space, _dir+90+getArenaAngle()), _y+lengthdir_y(10*i+_space, _dir+90+getArenaAngle()), (_dir+getArenaAngle())%360, _length+10, true, 0, infinity, true);
		array_insert(_bones, array_length(_bones), bone);
	}
	
	var i = 0;
	//playSound(pierce, _warnTime);
	repeat(array_length(_bones))
	{
		var inst = _bones[i];
		animCreate(inst, "x", ANIM_TWEEN.SINE, 1, 0, inst.x, -lengthdir_x(_length, _dir+getArenaAngle()), _moveTime, _warnTime);
		animCreate(inst, "y", ANIM_TWEEN.SINE, 1, 0, inst.y, -lengthdir_y(_length, _dir+getArenaAngle()), _moveTime, _warnTime);
		
		animCreate(inst, "x", acShake, 0, 0, inst.x-lengthdir_x(_length, _dir+getArenaAngle()), -lengthdir_x(3, _dir+getArenaAngle()+90), 1.5,_moveTime+_warnTime);
		animCreate(inst, "y", acShake, 0, 0, inst.y-lengthdir_y(_length, _dir+getArenaAngle()), -lengthdir_y(3, _dir+getArenaAngle()+90), 1.5,_moveTime+_warnTime);
		
		animCreate(inst, "x", ANIM_TWEEN.SINE, 0, 0, inst.x-lengthdir_x(_length, _dir+getArenaAngle()), lengthdir_x(_length, _dir+getArenaAngle()), _moveTime, _warnTime+_keepTime+_moveTime);
		animCreate(inst, "y", ANIM_TWEEN.SINE, 0, 0, inst.y-lengthdir_y(_length, _dir+getArenaAngle()), lengthdir_y(_length, _dir+getArenaAngle()), _moveTime, _warnTime+_keepTime+_moveTime);
		inst.alarm[1] = _warnTime+_keepTime+_moveTime*2
		i ++;
	}
	var warn = spriteCreate(sPx2d, _x-lengthdir_x(_length, _dir+getArenaAngle()), _y-lengthdir_y(_length, _dir+getArenaAngle()), LAYER.G, true, _dir+getArenaAngle()-90, 1, getArenaWidth(), 1);
	warn.alarm[1] = _warnTime+_moveTime;
	return _bones
}
function thornCreate(_preX, _preY, _preAngle, _tarX, _tarY, _tarAngle, _moveTime = 60, _spd = 8)
{
	var inst = instance_create_depth(_preX, _preY, LAYER.G, oBulletThorn);
	inst.image_angle = _preAngle;
	inst.angle = _preAngle;
	inst.direction = _tarAngle;
	inst.image_alpha = 0.5;
	animCreate(inst, "x", ANIM_TWEEN.CIRC, 1, 1, inst.x, _tarX, _moveTime);
	animCreate(inst, "y", ANIM_TWEEN.CIRC, 1, 1, inst.y, _tarY, _moveTime);
	animCreate(inst, "image_angle", ANIM_TWEEN.CIRC, 1, 1, inst.angle, _tarAngle, _moveTime);
	//playSound(pierce, _moveTime+30);
	animCreate(inst, "speed", ANIM_TWEEN.SINE, 1, 1, -5, _spd, 60, _moveTime);
	animCreate(inst, "image_alpha", ANIM_TWEEN.CIRC, 1, 1, 0.5, 1, 30, _moveTime);
	
}