function fs_rgbshake(xoffset,yoffset,sep)
{
	/*
	####################################
	It works like :
	1,r = [x,y]
	2,g = [x,y]
	3,b = [x,y]
	4,sep = time
	####################################
	*/
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
	{
		fs_ret().RGB.xshake = xoffset
		fs_ret().RGB.yshake = yoffset
		fs_ret().RGB.sep = sep
	}
}