Player_MovementAndAim();
Player_Dart();
Player_Grenade();
if (cooldown > 0) cooldown--;
if ((global.infection >= 1 || global.mentalHealth <= 0) && !global.dead) {
	global.dead = true;
	room_goto(rm_Dead);
}