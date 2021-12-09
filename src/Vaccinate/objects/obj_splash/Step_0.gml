/// @description Insert description here
// You can write your code in this editor

image_xscale+=.25;
image_yscale+=.25;
image_alpha-=.04;

if(image_alpha <= 0)
{
	instance_destroy(self);
}