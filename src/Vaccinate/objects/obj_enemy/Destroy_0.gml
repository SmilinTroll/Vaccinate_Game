
if(winCondition > 0)
{
	global.myscore++;
	if(global.mentalHealth < 95)
		global.mentalHealth += 5;
	else
		global.mentalHealth = 100;
}

else
{
	//Create fragments and enemy splatter on death
	
	repeat(choose(5,8)) instance_create_layer(x,y,"lay_enemy",obj_fragment);
	with (instance_create_layer(x,y,"lay_splatter",obj_splatter)) image_angle = 0;

	//Play sound
	audio_sound_pitch(snd_death,random_range(0.8,1.2));
	audio_play_sound(snd_death,0,0);

	//Screenshake
	with (obj_camera) shake = 4;
}