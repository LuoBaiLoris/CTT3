if live_call() return live_result
a_surf = noone
Obscure = {
	Use : false,
	Value : 0
}
screen = []
RGB = {
	xshake : 0,
	yshake : 0,
	shakex : 0,
	shakey : 0,
	sep : 0
}
Light = {
	Use : false,
	NormalLight : make_color_rgb(20,20,20),
	Lights : [],
	Light_surf : noone
}
Gray = false
glitch = noone
glitch_surf = [
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
	{x1 : -1,x2 : 0},
]
anti = false
fe = {
	x1 : false,
	x2 : shader_get_uniform(FSS_FishEye,"value"),
	x3 : pi/2,
}