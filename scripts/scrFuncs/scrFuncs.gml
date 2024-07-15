function musicDebugger(_snd,_pos)
{
	if (audio_is_playing(_snd))
	{
		if (abs(audio_sound_get_track_position(_snd) - _pos) >= 0.02)
		{
			audio_sound_set_track_position(_snd, _pos);
		}
	}
}
/*
function playSound(sndId, delay)
{
	var _inst = instance_create_depth(0, 0, 0, oSound);
	_inst.sndId = sndId; 
	_inst.alarm[0] = delay+1;
}
*/
function array_add(array, val)
{
	array_insert(array, array_length(array), val);
	return array_length(array);
}
function lerp2(a,b,amt)
{
	a += (b - a) * amt; 
	return a;
}
function print(_string)
{
	show_debug_message(_string + " : " +string(variable_instance_get(id,_string)));
}
enum LAYER
{
    A = 0,
    B = -1000,
    C = -2000,
    D = -3000,
    E = -4000,
    F = -5000,
    G = -6000,
    H = -7000,
    I = -8000,
    J = -9000
};
enum BULLETCOLOR
{
	WHITE,
	BLUE,
	ORANGE,
}
function GetTimer()
{
	if object_exists(oTimer)
	{
		return oTimer.timer;
	}
	else return -1;
}
function SetTimer(_time)
{
	oTimer.timer = _time-1;
}