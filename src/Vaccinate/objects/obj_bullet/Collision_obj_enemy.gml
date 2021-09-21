//Reduce enemy hitpoints on collision
with(other)
{
	if (!infected)
	{
		doses++;
		hit = 1;
	}
}
//hi

//destroy the bullet
instance_destroy();