/// @description Insert description here
live_auto_call
draw_set_halign(_halign);
draw_set_valign(_valign);
draw_set_font(_font);
draw_set_color(_color);

draw_text_ext_transformed_color(x,y,text,_height,_length, image_xscale, image_yscale, image_angle, _color, _color, _color, _color, image_alpha);

draw_set_halign(fa_left);
draw_set_valign(fa_top);