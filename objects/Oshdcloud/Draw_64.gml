
time++
if(shds = 1){
shader_set(shd);
shader_set_uniform_f(Time, time/50)
shader_set_uniform_f(roomsize, room_width, room_height)
shader_set_uniform_f(Size, size)
shader_set_uniform_f(Red, red)
shader_set_uniform_f(Green, green)
shader_set_uniform_f(Blue, blue)
shader_set_uniform_f(Alpha, alpha)
draw_surface_part(application_surface,0,0, room_width, room_height,0,0);
shader_reset();
draw_text_color(20,20,"size "+string(size),c_white,c_white,c_white,c_white,1)
draw_text_color(20,40,"alpha "+string(alpha),c_white,c_white,c_white,c_white,1)
draw_text_color(20,60,"red "+string(red),c_red,c_red,c_red,c_red,1)
draw_text_color(20,80,"green "+string(green),c_green,c_green,c_green,c_green,1)
draw_text_color(20,100,"blue "+string(blue),c_blue,c_blue,c_blue,c_blue,1)
}