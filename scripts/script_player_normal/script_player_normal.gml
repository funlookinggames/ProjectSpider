// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_player_normal(){


//input effectsa
var move = -walk_left + walk_right;

if (move != 0) {
	image_xscale = move;
	if (!run_bt) {
		if (walk_left_pressed) or (walk_right_pressed) image_index = 0;
		sprite_index = spr_player_walk;
		image_speed = spd+test;
	} else {
		sprite_index = spr_player_run;	
		image_speed = 1;
	}
} else {
	sprite_index = spr_player_stand;	
}
hsp = move * (spd + run_bt/2);

if (flashlight_bt) flashlight = -flashlight;
/*

*/

if (aim_bt) {
	move = 0;
	state = "aim";
}
	//resets the hunter grab mechanic and reset's game over;
	struggled = false;
	alarm[1] = -1;

//collision and gravity
script_collision_gravity();

}