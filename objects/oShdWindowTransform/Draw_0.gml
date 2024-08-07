/// @description
live_auto_call
shader_set(shdTransform);

var offset = shader_get_uniform(shdTransform, "offset");
var size = shader_get_uniform(shdTransform, "size");
var spd = shader_get_uniform(shdTransform, "spd");

shader_set_uniform_f(offset, _offset);
shader_set_uniform_f(size, _size);
shader_set_uniform_f(spd, _spd);

draw_surface(application_surface, 0, 0);
shader_reset();




