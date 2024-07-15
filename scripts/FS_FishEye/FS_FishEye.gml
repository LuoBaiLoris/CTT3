function fs_fisheye(use){
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		fs_ret().fe.x1 = use
}

function fs_fisheye_v(x1){
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		fs_ret().fe.x3 = x1
}