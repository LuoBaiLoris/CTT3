/// @description Insert description here
live_auto_call
if (type == 0)
{
	draw_sprite_ext(sPx2c, 0, 320,240,640,480,0, c_black, 1)
	gpu_set_blendmode(bm_add);
	var i = 0
	repeat(4)
	{
		draw_surface_ext(application_surface, 0+lengthdir_x(offset, i*90), 0+lengthdir_y(offset, i*90), 1, 1, 0, c_white, 0.25);
		i++;
	}
	gpu_set_blendmode(bm_normal);
}
if (type == 1)
{
	shader_set(shdLiquid); 
	shader_set_uniform_f(time_uniform,current_time/1000); 
	shader_set_uniform_f(amp_uniform,amp); 
	shader_set_uniform_f(scale1_uniform,scale1); 
	shader_set_uniform_f(scale2_uniform,scale2); 
	shader_set_uniform_f(freqX_uniform,freqX); 
	shader_set_uniform_f(freqY_uniform,freqY); 
	shader_set_uniform_f_array(resolution_uniform,[room_width,room_height]); 
	//draw_surface(application_surface,0,0); 
	
	draw_sprite_ext(sPx2c, 0, 320,240,640,480,0, c_black, 1)
	gpu_set_blendmode(bm_add);
	draw_surface_ext(application_surface, 0, 0, 1, 1, 0, c_white, 1/3);

	var i = 0
	repeat(2)
	{
		draw_surface_ext(application_surface, 0+lengthdir_x(offset, i*180+45), 0+lengthdir_y(offset, i*180+45), 1, 1, 0, c_white, 1/3);
		i++;
	}
	gpu_set_blendmode(bm_normal);
	
	
	shader_reset(); 
}