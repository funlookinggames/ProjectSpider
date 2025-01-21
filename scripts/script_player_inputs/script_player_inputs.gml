// Check for all player inputs
function script_player_inputs(){
	walk_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	walk_left_pressed = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
	walk_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	walk_right_pressed = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
	run_bt = keyboard_check(vk_shift) or keyboard_check(ord("K")) or keyboard_check(ord("X")); 
	aim_bt = keyboard_check(vk_control) or keyboard_check(ord("I"));
	action_bt = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("J")); 
	flashlight_bt = keyboard_check_pressed(ord("L")) or keyboard_check_pressed(ord("C"));
}