// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_DrawPlayerAmmo(){
	for(i = 0; i < global.ammo; i++)
		draw_sprite(spr_weapon, 0, camera_get_view_x(view_camera[0]) + 16 + (i mod 5) * 32, camera_get_view_y(view_camera[0]) + 56 + (i div 5) * 32);
	
}