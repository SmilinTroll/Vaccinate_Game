//Initialize variables
hp = 10;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 1.5;		//movement speed
image_xscale = .7;
image_yscale = .7;
infected = false;
doses = 0;
exposure = false;
vaccinated = false;
winCondition = 0.0;
infection = 0.0
infectionTime = 3;
winTime = 10;
collisionDistance = 80;
insult = 0.0;

speechID = 0;

image_xscale = 0.7;
image_yscale = 0.7;
rand = random(5);
if(rand >= 4)
	infected = true;