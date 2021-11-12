/// @description Insert description here
// You can write your code in this editor


global.paused = !global.paused;


if(global.paused)
{
	instance_deactivate_all(true);
	instance_create_layer(camera_get_view_x(view_camera[0]) + 512 - 64*2.5 ,camera_get_view_y(view_camera[0]) + 768/2 -64,"lay_pause", obj_pauseMenu);
}
	
else
{
	instance_activate_all();
}