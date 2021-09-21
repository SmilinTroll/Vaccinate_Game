// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Karen_Movement(){
	if (instance_exists(obj_player))
	{
		move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0));
		if( scr_distance (obj_player.x, obj_player.y, x, y) < 100 && infected)
		{
			global.infection += delta_time/1000000;
		}
	}
	
	//Angle sprite based on direction
	image_angle = direction;
	

}


