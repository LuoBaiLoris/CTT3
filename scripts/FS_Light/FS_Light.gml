function fs_draw_light(x,y,r,c)
{
	var temp = 32
	draw_primitive_begin(pr_trianglefan)
	draw_vertex_color(x,y,c,0.5)
	for(i=0;i<=temp;i++)
		draw_vertex_color(x+lengthdir_x(r,i*360/temp),y+lengthdir_y(r,i*360/temp),c,0)
	draw_primitive_end()
}
function fs_light()
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else 
		global.FrozenShader.Light.Use = !global.FrozenShader.Light.Use
}
function fs_light_on()
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else 
		global.FrozenShader.Light.Use = true
}
function fs_light_close()
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else 
		global.FrozenShader.Light.Use = false
}
function fs_add_light(x,y,r,c)
{
	var temp = {x:x,y:y,r:r,c:c}
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		array_insert(fs_ret().Light.Lights,array_length(fs_ret().Light.Lights),temp)
}
function fs_setlight(num,x,y,r,c)
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
	{
		fs_ret().Light.Lights[num].x = x
		fs_ret().Light.Lights[num].y = y
		fs_ret().Light.Lights[num].r = r
		fs_ret().Light.Lights[num].c = c
	}
}
function fs_getlight(num)
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		return fs_ret().Light.Lights[num]
}
function fs_setnormallight(c)
{
	if !instance_exists(global.FrozenShader)
		show_error("Error from FrozenShader : You should load FrozenShader in advance",true)
	else
		return fs_ret().Light.NormalLight = c
}