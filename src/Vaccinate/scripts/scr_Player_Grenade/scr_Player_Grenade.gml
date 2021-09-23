// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Grenade(){
	if (mouse_check_button(mb_right))
	{
		if(ammo >= 1 && cooldown == 0)
		{
			ammo --;
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			cooldown = weaponspd;
		}
	}
}