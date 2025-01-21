/// @description grab the player
if (charging) and (state == "charge") {
	grabbed = true;
	obj_player.grabbed = true;
	other.state = "grabbed";
	state = "grab";
}
if (other.struggled) {
	sprite_index = spr_hunter_mask;
	charging = false;
	grabbed = false;
	state = "stunned";
}




