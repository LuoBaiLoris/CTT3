function fs_obscure(Use)
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		fs_ret().Obscure.Use = Use
}
function fs_obscure_setval(val)
{
	fs_ret().Obscure.Value = val
}
function fs_obscure_retval()
{
	return fs_ret().Obscure.Value
}