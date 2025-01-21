// This will execute when the player is grabbed
function script_player_grabbed(){
	if (keyboard_check_pressed(vk_anykey)) {
		struggle += 3;
	}
	
	if (alarm[1] <= 0) alarm[1] = room_speed*5;
	if (struggle > 50) {
		struggled = true;
		grabbed = false;
		struggle = 0;
		state = "normal";
	}
}