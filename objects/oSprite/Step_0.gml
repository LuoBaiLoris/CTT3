live_auto_call
image_angle += _rotate;
//show_debug_message(1);
part_system_depth(_partSys, depth+1 );
part_type_sprite(_partType, sprite_index, false, false, false);
part_type_size(_partType, 1, 1, 0, 0);
part_type_scale(_partType, image_xscale, image_yscale);
part_type_colour1(_partType, image_blend);
part_type_alpha2(_partType, image_alpha, 0);
//part_type_speed(_partType, 0, 0, 0, 0);
//part_type_direction(_partType, 0, 0, 0, 0);
//part_type_gravity(_partType, 0.20, 270);
part_type_orientation(_partType, image_angle, image_angle, 0, 0, 1);
//part_type_blend(_partType, 1);
part_type_life(_partType, _shdLife, _shdLife);	
part_type_subimage(_partType, image_index);









