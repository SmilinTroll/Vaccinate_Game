//Change player's weapon on collision
with (obj_player)
{
	//weapon = 1;
	//weaponspd = 20;
	global.ammo += 2;
}
//then destroy
instance_destroy();