/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw options
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fnt_smaller);

for (var i = 0; i < op_length; i++)
{
	var c = c_white;
	if (pos == i)
		c = c_aqua;
	
	draw_text_color(x+op_border, y+op_border + op_space*i, option[i], c, c, c, c, 1);	
}