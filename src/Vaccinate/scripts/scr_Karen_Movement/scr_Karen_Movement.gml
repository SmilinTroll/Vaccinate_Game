// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Karen_Movement(){
	if (instance_exists(obj_player))
	{
		move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0));
	}
	
	//Angle sprite based on direction
	image_angle = direction;
}