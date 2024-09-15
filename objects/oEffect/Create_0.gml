/// @description Insert description here
// You can write your code in this editor
live_auto_call
_appSurface = surface_create();
shdArray = [];
surfaceArray = [_appSurface];
function shdInfo(_name, _shdId, _extraArg = {})
{
	var _shd =
	{
		name : _name,
		surfaceId : surface_create(),
		type : 0,
		shdId : _shdId,
		extraArg : _extraArg
	}
	array_add(shdArray ,_shd);

}
shdInfo("invert", shd_invert);