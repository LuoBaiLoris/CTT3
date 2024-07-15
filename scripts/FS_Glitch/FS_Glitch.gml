function fs_glitch(use){
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		fs_ret().glitch = use
}
function fs_set_glitch(which,_x){
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else{
		fs_ret().glitch_surf[which].x2 = _x
	}
}
function fs_add_glitch(which,_x){
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else{
		fs_ret().glitch_surf[which].x2 += _x
	}
}

function fs_anti(use){
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		fs_ret().anti = use
}