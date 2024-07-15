function animExist(_inst,_value)
{
	var _anim = 
	{
		inst : _inst,
		value : _value

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
	var out = false;
	if (array_length(global._anim_list_l) > 0)
	{
		for(var i=0;i<array_length(global._anim_list_l);i++)
		{
			var anim = global._anim_list_l[i];
			if (is_array(anim.inst))
			{
				if (instance_exists(anim.inst[0]))
				{
					if (_anim.inst == anim.inst)
					{
						out = (_anim.value == anim.value);
						break;
					}
				}	
			}
			else if (is_struct(anim.inst))
			{
				if (instance_exists(anim.inst.inst))
				{
					if (_anim.inst == anim.inst)
					{
						out = (_anim.value == anim.value);
						break;
					}
				}	
			}
			else if (instance_exists(anim.inst))
			{
				if (_anim.inst == anim.inst)
				{
					out = (_anim.value == anim.value);
					break;
				}
			}
		}
	}
	return out
}