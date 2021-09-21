/// @description Insert description here
// You can write your code in this editor
show_debug_message("alarm");
rand = random(100);

if (doses == 1 && rand > 82)
	infected = true;
else if (doses >= 2 && rand > 95)
	infected = true;
else if (rand > 35)
	infected = true;
exposure = false;