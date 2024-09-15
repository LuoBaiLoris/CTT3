/// @description Insert description here
// You can write your code in this editor
live_auto_call
var i = 0;
repeat(array_length(surfaceArray))
{
	var _shd = shdArray[i];
	if （_shd.type > 0)
	{
		shader_set(_shd.shdId);
		draw_surface(_shd.surfaceId, 0, 0);
		shader_reset();
	}
	i ++;
}

//show_debug_message(1)