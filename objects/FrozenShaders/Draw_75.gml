if live_call() return live_result
if !surface_exists(a_surf) a_surf=surface_create(640,480)
surface_set_target(a_surf)
shader_set(FSS_ASS)
draw_surface(application_surface,0,0)
shader_reset()
surface_reset_target()
draw_clear_alpha(0,0)
fs_drawappsur(0,0,1,1,0,c_white,1)
if Obscure.Use
{
	var temp0 = 0
	for(i=0;i<=Obscure.Value and temp0 <= 10;i+=global.FS_Val)
	{
		if temp0 == 0 draw_clear_alpha(0,0)
		temp0++
		fs_drawappsur(lengthdir_x(Obscure.Value*5,i*360/Obscure.Value),lengthdir_y(Obscure.Value*5,i*360/Obscure.Value),1,1,0,c_white,0.5)
	}
}
if RGB.sep != 0
{
	draw_clear_alpha(0,0)
	gpu_set_blendmode(bm_add)
	fs_drawappsur(RGB.shakex,RGB.shakey,1,1,0,c_red,1)
	fs_drawappsur(0,0,1,1,0,c_lime,1)
	fs_drawappsur(-RGB.shakex,-RGB.shakey,1,1,0,c_blue,1)
	gpu_set_blendmode(bm_normal)
	//fs_drawappsur(0,0,1,1,0,c_white,0.5)
}
if anti{
	shader_set(FSS_Anti)
	fs_drawappsur(0,0,1,1,0,c_white,1)
	shader_reset()
}
if Gray and !glitch{
	shader_set(FSS_Gray)
	fs_drawappsur(0,0,1,1,0,c_white,1)
	shader_reset()
}
if glitch and !Gray{
	for(i=1;i<=10;i++){
		if !surface_exists(glitch_surf[i-1].x1) glitch_surf[i-1].x1=surface_create(640,48)
		
		surface_set_target(glitch_surf[i-1].x1)
		fs_drawappsur(0,-(i-1)*48,1,1,0,c_white,1)
		surface_reset_target()

		draw_surface(glitch_surf[i-1].x1,glitch_surf[i-1].x2,(i-1)*48)
		
		surface_set_target(glitch_surf[i-1].x1)
		draw_clear_alpha(0,0)
		surface_reset_target()
	}
}
if glitch and Gray{
	for(i=1;i<=10;i++){
		if !surface_exists(glitch_surf[i-1].x1) glitch_surf[i-1].x1=surface_create(640,48)
		
		surface_set_target(glitch_surf[i-1].x1)
		shader_set(FSS_Gray)
		fs_drawappsur(0,-(i-1)*48,1,1,0,c_white,1)
		shader_reset()
		surface_reset_target()

		draw_surface(glitch_surf[i-1].x1,glitch_surf[i-1].x2,(i-1)*48)
		
		surface_set_target(glitch_surf[i-1].x1)
		draw_clear_alpha(0,0)
		surface_reset_target()
	}
}
else{
	for(i=1;i<=10;i++){
		if surface_exists(glitch_surf[i-1].x1)
			surface_free(glitch_surf[i-1].x1)
	}
}
if fe.x1{
	draw_clear_alpha(0,0)
	shader_set(FSS_FishEye)
	fs_drawappsur(0,0,1,1,0,c_white,1)
	shader_set_uniform_f(fe.x2,fe.x3)
	shader_reset()
}
for(i=1;i<=array_length(screen);i++)
{
	var temp0 = screen[i-1]
	fs_drawappsur(temp0.x,temp0.y,temp0.xscale,temp0.yscale,temp0.dir,c_white,temp0.alpha)
}

surface_set_target(a_surf)
draw_clear_alpha(0,0)
surface_reset_target()