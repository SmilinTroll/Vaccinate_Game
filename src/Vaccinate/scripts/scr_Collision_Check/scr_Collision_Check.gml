// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Collision_Check(){
	if(collision_circle(x, y, 100, obj_enemy, false, true))
	{
		with (other)
		{
			if (infected && !other.infected && !other.exposure)
			{
				show_debug_message("exposure");
				other.exposure = true;
			}
		}
	}
}