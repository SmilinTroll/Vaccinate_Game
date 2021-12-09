/// @description Insert description here
// You can write your code in this editor
width = 64*2;
height = 72;
x = 565;
y = 768/2 - 32;


op_border = 8;
op_space = 32;

pos = 0;

option[0] = "Start Game";
option[1] = "Instructions";
option[2] = "Credits";
option[3] = "Exit Game";

op_length = array_length(option);

if(! audio_is_playing(main_menu_music))
	audio_play_sound(main_menu_music, 0, 10);