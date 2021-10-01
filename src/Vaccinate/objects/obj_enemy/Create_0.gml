//Initialize variables
hp = 10;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 1.5;		//movement speed
infected = false;
doses = 0;
exposure = false;
vaccinated = false;
winCondition = 0.0;
infection = 0.0
infectionTime = 3;
winTime = 10;
collisionDistance = 80;

rand = random(5);
if(rand >= 4)
	infected = true;