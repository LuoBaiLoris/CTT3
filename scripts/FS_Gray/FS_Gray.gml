function fs_gray(Use)
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		fs_ret().Gray = Use
}