//Gmlive
	
if (array_length(global._anim_list_l) >	0)
{
		
	for(var i=0;i<array_length(global._anim_list_l);i++)
	{
			
		var anim = global._anim_list_l[i];
					
		if (anim.time < anim.during)
		{
			anim.time ++;
			if (anim.time >= 0)
			{
				var _val;//animcurve_channel_evaluate(animcurve_get_channel(anim.anim_curve, anim.anim_index), 1/anim.during*anim.time)*(anim.value_type);
				if (anim.type == 0)
				{
					{
						_val = Anim_GetValue(anim.anim_curve, anim.anim_index, 1/anim.during*anim.time, anim.arg0, anim.arg1)*(anim.value_type)
					}
				}
				else
				{			
					{
						_val = Anim_GetValue(anim.anim_curve, anim.anim_index, 1/anim.during*anim.time,anim.arg0, anim.arg1)*(anim.value_type-anim.start)
					}
				}
				if (is_array(anim.inst))
				{
					with (anim.inst[0])
					{
						anim.inst[1][anim.value]=anim.start+_val;
					}
						
				}
				else if (is_struct(anim.inst))
				{
					with (anim.inst.id)
					{
						variable_struct_set(anim.inst.inst,anim.value,anim.start+_val);
					}
						
				}
				else if (instance_exists(anim.inst))
				{
					variable_instance_set(anim.inst,anim.value,anim.start+_val);
				}
				else
				{
						//anim.time = anim.during;
					array_delete(global._anim_list_l,i,1);
					i -= 1;
				}
			}
		}
		else 
		{
			array_delete(global._anim_list_l,i,1);
			i -= 1;
		}
	}
}




