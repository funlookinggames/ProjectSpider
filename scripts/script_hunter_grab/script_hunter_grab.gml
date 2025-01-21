// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_hunter_grab(){
	hsp = 0;
	if (hit) {
		hp -= obj_player.dmg;
	}
}