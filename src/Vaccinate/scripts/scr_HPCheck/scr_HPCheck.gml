// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HPCheck(OnZeroHealth){
	if(hp <= 0) OnZeroHealth();
	if(doses >= 2 && !vaccinated) 
	{
		global.myscore++;
		vaccinated = true;
	}
}