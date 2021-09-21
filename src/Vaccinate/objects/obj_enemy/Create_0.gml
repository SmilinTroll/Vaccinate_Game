//Initialize variables
hp = 10;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 1.5;		//movement speed
infected = false;
doses = 0;
exposure = false;
vaccinated = false;
infection = 0.0

rand = random(3);
if(rand >= 2)
	infected = true;