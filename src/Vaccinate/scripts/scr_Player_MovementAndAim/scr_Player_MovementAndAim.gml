// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_MovementAndAim(){
	//Move in four directions when pressing arrow keys.
	if ( (keyboard_check(vk_left) || keyboard_check(ord("A"))) && x-spd >=0	)
	{
		if( instance_place(x-spd, y, obj_enemy))
			x -= spd/4;
		else
			x-= spd;
	}
	if ( (keyboard_check(vk_right) || keyboard_check(ord("D")))&& x+spd >=0 )
	{	
		if( instance_place(x+spd, y, obj_enemy) )
			x+= spd/4;
		else
			x+= spd;
	}
	if ( (keyboard_check(vk_up) || keyboard_check(ord("W"))) && y-spd >=0 )	
	{
		if (instance_place(x, y-spd, obj_enemy) )
			y-= spd/4;
		else
			y-= spd;
	}
	if (( keyboard_check(vk_down) || keyboard_check(ord("S")))&& y+spd >=0 )	
	{
		if ( instance_place(x, y+spd, obj_enemy) )
			y+= spd/2;
		else
			y+= spd;
	}

	//angle sprite towards mouse cursor
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	
	//reset spd
	spd = basespd;
}