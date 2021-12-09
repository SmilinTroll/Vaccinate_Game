/// @description Insert description here
// You can write your code in this editor

/*with (other)
{
	if(infected)
	{
		infected = false;
		infection = 0;
		hp = 10;
	}
	*/
	audio_play_sound(Cure_Explotsion, 0, 0);
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 400, obj_enemy, false, true, _list, false);
	
	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
		{
			if (_list[| i].infected)
			{
				//show_debug_message("exposure");
				_list[| i].infected = false;
				_list[| i].infection = 0;
				_list[| i].hp = 10;
			}
		}
    }
	ds_list_destroy(_list);
//}

instance_destroy();