///Initialize variables

basespd = 4;			//default movement speed
spd = 4;				//current movement speed 
weapon = 0;				//current weapon
weaponspd = 20;			//current shooting speed
global.ammo = 0;				//when ammo reaches zero, return to default weapon (unlimited ammo)
cooldown = 0;			//able to fire again when cooldown reaches zero (based on weaponspd)
global.mentalHealth = 100;
global.infection = 0;
global.paused = false;
global.dead = false;
audio_play_sound(gamemusic, 0, 100);