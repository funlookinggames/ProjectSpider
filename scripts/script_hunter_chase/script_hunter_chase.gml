// the player has been found and ready to start the chase
function script_hunter_chase(){
	if (distance_to_object(obj_player) > 50) {
	
		//Check player positio
		if (x > obj_player.x) {
			facing = "left";
			hsp = -(spd*2);
			image_xscale = -1;
		} else {
			facing = "right";
			hsp = spd*2;
			image_xscale = 1;
		}
	} else { 
		prowlmax = random_range(room_speed*1, room_speed*2);
		prowl = 0;
		state = "prepare";	
	}
	if (hit) {
		hp -= obj_player.dmg;
		hit = 0;
	}
}