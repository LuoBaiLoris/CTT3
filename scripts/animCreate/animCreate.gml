
///@arg inst
///@arg changeVar
///@arg curve/tween
///@arg index/ease
///@arg type
///@arg start
///@arg offset/target
///@arg duration
///@arg delay*
///@arg arg0*
///@arg arg1*
function animCreate(_inst, _value, _curve, _index, _type, _start, _valueType, _duration, _delay = 0, _arg0 = 0, _arg1 = 0)
{

	var _anim = 
	{
		inst : _inst,
		value : _value,
		anim_curve : _curve,	
		anim_index : _index,
		during : _duration+1,
		time : -_delay,
		start : _start,
		type : _type,
		value_type : _valueType,
		arg0 : _arg0,
		arg1 : _arg1
	}
	if (is_array(_inst))
	{
		_anim.inst = [id,_inst];
	}
	if (is_struct(_inst))
	{
		_anim.inst = {id:0,inst:0};
		_anim.inst.id = id;
		_anim.inst.inst = _inst;
	}
	array_insert(global._anim_list_l,array_length(global._anim_list_l),_anim);

}

