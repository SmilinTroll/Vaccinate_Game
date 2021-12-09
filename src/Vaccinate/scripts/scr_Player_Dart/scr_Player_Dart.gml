// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Dart(){
	//Fire when pressing the left mouse button
	if (mouse_check_button(mb_left)) 
	{
		
		//reduce speed to account for recoil
		spd = 2;
		if (cooldown == 0)
		{
			audio_play_sound(vaccine_launch, 0, 0);
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet);
		
			//set cooldown to current weaponspeed
			cooldown = weaponspd;
		}
	}
}