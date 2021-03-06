// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Karen_Movement(){
	if (instance_exists(obj_player) && winCondition < winTime)
	{
		
		if(scr_distance(obj_player.x, obj_player.y, x, y) > collisionDistance)
			if(collision_circle(x, y, 60, obj_enemy, false, true))
			{
				k2 = collision_circle(x, y, 60, obj_enemy, false, true);
				// if this karen is farther away and about to colide with another karen dont move for a frame
				if((power(k2.x-obj_player.x, 2) + power(k2.y-obj_player.y, 2)) < (power(x-obj_player.x, 2) + power(y-obj_player.y, 2)))
					move_towards_point(obj_player.x,obj_player.y,0);
				else
					move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0));
			}
				
			else
				move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0));
		else
			move_towards_point(x, y, 0);
		if( scr_distance (obj_player.x, obj_player.y, x, y) < 100 )
		{
			global.mentalHealth -= delta_time/1000000 * 20;
			if (infected)
				global.infection += delta_time/1000000 * 0.25;
		}
		
	}
	
	else if (winCondition >= winTime)
	{
		//determine where to go
		if(scr_distance(obj_player.x, obj_player.y, x, y) > collisionDistance)
		{
			if(x < room_width/2 && y < room_height/2)
			{
				//go up and to the left
				move_towards_point(0, 0, spd);
			}
			else if (x < room_width/2 && y > room_height /2)
			{
				//go down and to the left
				move_towards_point(0, room_height, spd);
			}
			else if (x > room_width/2 && y < room_height/2)
			{
				// go up and to the right
				move_towards_point(room_width, 0, spd);
			}
			else
			{
				//go down and to the right
				move_towards_point(room_width, room_height, spd);
			}
		}
		else
		{
			move_towards_point(x, y, 0);
		}
	}
	
	
	//check for out of bounds
	if(x > room_width || x < 0 || y > room_height || y < 0)
	{
		instance_destroy(self);	
	}
	
	//Angle sprite based on direction
	image_angle = direction;
}


