Player_MovementAndAim();
Player_Dart();
Player_Grenade();
if (cooldown > 0) cooldown--;
if ((global.infection >= 1 || global.mentalHealth <= 0) && !global.dead) {
	global.dead = true;
	keyboard_key_press(vk_escape);
}