// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_DrawPlayerHP(){
	draw_set_color(c_red);
	draw_rectangle(x-64, y-64, x+64 - 128 * global.infection, y-56, false)
	
	draw_set_color(c_blue);
	draw_rectangle(x-64, y-56, x-64 + 1.28 * (global.mentalHealth), y-48, false)
}