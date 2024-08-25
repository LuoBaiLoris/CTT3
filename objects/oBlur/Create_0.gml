/// @description Insert description here
live_auto_call
offset = 10;
alpha = 1;
type = 0;

time_uniform = shader_get_uniform(shdLiquid,"iTime");
resolution_uniform = shader_get_uniform(shdLiquid,"iResolution");
amp_uniform = shader_get_uniform(shdLiquid,"iAmp");
scale1_uniform = shader_get_uniform(shdLiquid,"iScale1");
scale2_uniform = shader_get_uniform(shdLiquid,"iScale2");
freqX_uniform = shader_get_uniform(shdLiquid,"iFreqX");
freqY_uniform = shader_get_uniform(shdLiquid,"iFreqY");
amp = 0;
scale1 = 0.3;
scale2 = 3.5;
freqX = 30.0;
freqY = 30.0;
