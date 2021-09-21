//Fire when pressing the left mouse button
if (mouse_check_button(mb_left)) 
{
	//reduce speed to account for recoil
	spd = 2;
	if (cooldown == 0)
	{
		//reduce ammo of special weapon if necessary
		ammo--;
		if (ammo < 1) 
		{
			weaponspd = 40;
			//weapon = 0;
		}
		bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet);
		
		//set cooldown to current weaponspeed
		cooldown = weaponspd;
	}
}

else if (mouse_check_button(mb_right))
{
	if(ammo >= 1 && cooldown == 0)
	{
		ammo --;
		bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
		cooldown = weaponspd;
	}
}
else 
{
	//restore speed to default
	spd = basespd; 
}


//tick down cooldown every frame
if (cooldown > 0) cooldown--; 

//Move in four directions when pressing arrow keys.
// Change arrow keys to WASD
if (keyboard_check(vk_left) || keyboard_check(ord("A")))	x-= spd;
if (keyboard_check(vk_right) || keyboard_check(ord("D")))	x+= spd;
if (keyboard_check(vk_up) || keyboard_check(ord("W")))		y-= spd;
if (keyboard_check(vk_down) || keyboard_check(ord("S")))	y+= spd;

//angle sprite towards mouse cursor
image_angle = point_direction(x,y,mouse_x,mouse_y);

if (global.infection >= 1) game_restart();