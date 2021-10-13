Karen_Movement();

Karen_ReduceHitFlash();

HPCheck(instance_destroy);

if(infected)
{
	//infect others
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 100, obj_enemy, false, true, _list, false);
	
	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
		{
			if (!_list[| i].infected)
			{
				//show_debug_message("exposure");
				_list[| i].infection += delta_time/1000000;
			}
		}
    }
	ds_list_destroy(_list);
	
	//lose health
	hp -= delta_time/1000000;
	
	if(hp <= 0)
	{
		global.myscore -= 1;
		global.mentalHealth -= 5;
		instance_destroy(self);
	}
}

if (infection >= infectionTime)
{
	
	rand = random(100);
	//show_debug_message("check infection");
	//show_debug_message(rand);
	if(doses >= 2 && rand >= 95)
	{
		infected = true;
		winCondition = 0.0;
	}
	else if (doses == 1 && rand >= 83)
	{
		infected = true;
		winCondition = 0.0;
	}
	else if (doses == 0 && rand >= 25 )
	{
		infected = true;
		winCondition = 0.0
	}
	else
		infection = 0.0;
}

else if (doses >= 2 && !infected && winCondition < winTime)
{
	winCondition += delta_time/1000000;	
}
