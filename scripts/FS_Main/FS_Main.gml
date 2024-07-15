global.FrozenShader = noone
global.FS_Val = 0.1
function fs_load()
{
	if !instance_exists(global.FrozenShader)
		global.FrozenShader = instance_create_depth(0,0,0,FrozenShaders)
	else
		show_error("Error from FrozenShader : You shouldn't load more FrozenShader",true)
	return true
}
function fs_isload()
{
	return instance_exists(global.FrozenShader)
}
function fs_unload()
{
	if instance_exists(global.FrozenShader)
		instance_destroy(global.FrozenShader)
	else
		show_error("Error from FrozenShader : You shouldn't unload FrozenShader without use it",true)
	return true
}
function fs_load_ext()
{
	if !fs_isload()
		fs_load()
}
function fs_ret()
{
	if fs_isload()
		return global.FrozenShader
	else
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
}
function fs_setval(val)
{
	global.FS_Val = val
}
function fs_drawappsur(x,y,xscale,yscale,rot,col,alpha)
{
	if fs_isload()
	{
		//draw_surface_ext(application_surface,x,y,xscale,yscale,rot,col,alpha)
		if surface_exists(fs_ret().a_surf)
			draw_surface_ext(fs_ret().a_surf,x,y,xscale,yscale,rot,col,alpha)
	}
	else
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
}