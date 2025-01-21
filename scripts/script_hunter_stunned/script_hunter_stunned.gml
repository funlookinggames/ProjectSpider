// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_hunter_stunned(){
	hsp = 0;
	vsp = 0;
	if (alarm[1] <= 0) alarm[1] = room_speed*2;
	if (hit) {
		hp -= obj_player.dmg;
		hit = 0;
	}
}