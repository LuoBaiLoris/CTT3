live_auto_call

_shadow = false;
_autoDestroy = false;
_gui = false;
_shdLife = 60;
_shdTime = 10;
_rotate = 0;
mask = false;
function Set(rotate, shadow, autoDestroy, shdLife, shdTime)
{
	_rotate = rotate;
	_shadow = shadow;
	_autoDestroy = autoDestroy;
	_shdLife = shdLife;
	_shdTime = shdTime;
	if (autoDestroy > 0)
	{
		alarm[0] = autoDestroy+1;
	}
	if (shadow)
	{
		alarm[1] = shdTime;
	}
}
_partSys = part_system_create();
_partType = part_type_create();





