//Draw sprite
draw_self();
//Draw white flash sprite if recently hit (uses "hit" for alpha/transparency)
draw_sprite_ext(spr_enemy_flash,0,x,y,image_xscale,image_yscale,image_angle,c_white,hit);

if(infected)
	draw_sprite_ext(spr_enemy_red,0,x,y,image_xscale,image_yscale,image_angle,c_white, 0.5);

else if(vaccinated)
	draw_sprite_ext(spr_enemy_blue,0,x,y,image_xscale,image_yscale,image_angle,c_white, 0.5);