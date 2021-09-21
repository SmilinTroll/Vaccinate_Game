//Initialize variables
hp = 2;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 1.5;		//movement speed
infected = false;
doses = 0;
exposure = false;
vaccinated = false;

rand = random(3);
if(rand >= 2)
	infected = true;