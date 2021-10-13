//Reduce enemy hitpoints on collision
with(other)
{
	if (!infected)
	{
		doses++;
		hit = 1;
		if(doses < 2 && global.mentalHealth < 100)
		{
			if(global.mentalHealth >= 99)
				global.mentalHealth = 100
			else
				global.mentalHealth += 1;
		}
	}
}
//hi

//destroy the bullet
instance_destroy();