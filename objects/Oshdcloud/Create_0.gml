shd = shd_

roomsize = shader_get_uniform(shd, "iResolution");
Time = shader_get_uniform(shd, "iGlobalTime");
Size = shader_get_uniform(shd, "Size");
Red = shader_get_uniform(shd, "RED");
Green = shader_get_uniform(shd, "GREEN");
Blue = shader_get_uniform(shd, "BLUE");
Alpha = shader_get_uniform(shd, "ALPHA");

time = 0;

size = 0;
red = 10;
green = 10;
blue = 10;
alpha = 0;

shds = 0;