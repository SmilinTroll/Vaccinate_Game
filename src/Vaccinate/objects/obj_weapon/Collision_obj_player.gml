//Change player's weapon on collision
audio_play_sound(pickupgrenede, 0, 0);
with (obj_player)
{
	//weapon = 1;
	//weaponspd = 20;
	global.ammo += 2;
}
//then destroy
instance_destroy();