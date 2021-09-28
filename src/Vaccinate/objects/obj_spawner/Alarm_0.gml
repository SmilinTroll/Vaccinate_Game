//Create 6 new enemies
repeat(6)
{
	tempX = random(room_width);
	tempY = random(room_height);
	if(scr_distance(obj_player.x, obj_player.y, tempX, tempY) > 500)
		instance_create_layer(tempX,tempY,"lay_enemy",obj_enemy);
}

//Decrease time between spawns
timer = max (timer-timer_dec,timer_min);

//Reset alarm
alarm[0] = timer;