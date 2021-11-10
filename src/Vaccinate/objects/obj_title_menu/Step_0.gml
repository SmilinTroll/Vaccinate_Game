/// @description Insert description here
// You can write your code in this editor
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

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
			room_goto(rm_default); //start game
	
		break;
	
		case 1:
			room_goto(rm_instructions);
	
		break;
	
		case 2:
			game_end();
		break;
	}
}