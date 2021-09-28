//Change player's weapon on collision
with (obj_player)
{
	//weapon = 1;
	//weaponspd = 20;
	ammo += 5;
}
//then destroy
instance_destroy();