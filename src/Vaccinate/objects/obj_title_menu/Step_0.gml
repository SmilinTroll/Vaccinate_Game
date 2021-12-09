/// @description Insert description here
// You can write your code in this editor
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

pos += down_key - up_key;

if(pos >= op_length)
	pos = 0;
	
else if (pos < 0)
	pos = op_length-1;
	
if(accept_key)
{
	switch(pos)
	{
		case 0:
			audio_stop_all();
			room_goto(rm_default); //start game
	
		break;
	
		case 1:
			room_goto(rm_instructions);
	
		break;
	
		case 2:
			room_goto(rm_credits);
		break;
		
		case 3:
			game_end();
		break;
	}
}