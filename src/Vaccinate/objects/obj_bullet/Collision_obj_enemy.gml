//Reduce enemy hitpoints on collision
with(other)
{
	doses++;
	hit = 1;
}

//destroy the bullet
instance_destroy();