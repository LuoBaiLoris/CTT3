function fs_screen(array)
{
	/*
	###################################################
	List must conclude:
	1.x[0]
	2.y[1]
	List may conclude:
	1,xscale[2]
	2,yscale[3]
	3,dir[4]
	4,alpha[5]
	###################################################
	*/
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
	{
		if is_array(array)
		{
			var list = {
				x : array[0],
				y : array[1],
				xscale : noone,
				yscale : noone,
				dir : noone,
				alpha : noone,
			}
			if array_length(array) <= 2 list.xscale = 1
			else list.xscale = array[2]
			if array_length(array) <= 3 list.yscale = 1
			else list.yscale = array[3]
			if array_length(array) <= 4 list.dir = 0
			else list.dir = array[4]
			if array_length(array) <= 5 list.alpha = 1
			else list.alpha = array[5]
			array_insert(fs_ret().screen,0,list)
		}
		else
			show_error("Error from FrozenShader : You should add screen in an array which includes x,y",true)
	}
}