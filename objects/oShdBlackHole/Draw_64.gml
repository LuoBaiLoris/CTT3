live_auto_call
var lensRadius = shader_get_uniform(shdBlackHole, "lensRadius");
var lensStrength = shader_get_uniform(shdBlackHole, "lensStrength");
shader_set(shdBlackHole);
shader_set_uniform_f(lensRadius, _lensRadius);
shader_set_uniform_f(lensStrength, _lensStrength);
draw_surface(application_surface,0,0);
shader_reset();