Karen_Movement();

Karen_ReduceHitFlash();

HPCheck(instance_destroy);

if(infected)
{
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 100, obj_enemy, false, true, _list, false);
	
	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
		{
			if (!_list[i].infected)
			{
				_list[i].exposure = true;
			}
		}
    }
	ds_list_destroy(_list);
}

if(exposure)
{
	alarm[0] = room_speed;	
}