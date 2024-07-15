if live_call() return live_result
if !surface_exists(Light.Light_surf) Light.Light_surf = surface_create(room_width,room_height)
surface_set_target(Light.Light_surf)
draw_clear_alpha(Light.NormalLight,1)
gpu_set_blendmode(bm_add)
for(i=1;i<=array_length(Light.Lights);i++)
	fs_draw_light(Light.Lights[i-1].x,Light.Lights[i-1].y,Light.Lights[i-1].r,Light.Lights[i-1].c)
gpu_set_blendmode(bm_normal)
surface_reset_target()

if Light.Use{
	gpu_set_blendmode_ext_sepalpha(bm_zero,bm_src_color,bm_zero,bm_one)
	draw_surface(Light.Light_surf,0,0)

	gpu_set_blendmode(bm_normal)
}