Player_MovementAndAim();
Player_Dart();
Player_Grenade();
if (cooldown > 0) cooldown--;
if (global.infection >= 1) game_restart();
if (global.mentalHealth <= 0) game_restart();