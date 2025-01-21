// When the enemy is idle, have not found a target yet, patrolling
function script_hunter_idle(){
	image_speed = 1;
	if (distance_to_object(obj_player) < 120) {
		state = "chase";
	} else { 
		//check if still
		if (standing < maxstand) {
			standing++;
		} else {
			standing = 0;
			target_x = random_range(x-100,x+100);
			maxstand = random_range(room_speed*5, room_speed*10);
			//move = true;
		}
	
		if (distance_to_point(target_x, y) > hsp) {
			if (x < target_x) {
				hsp = spd;
				image_xscale = 1;
			} else if (x > target_x) {
				hsp = -spd;
				image_xscale = -1;
			}
		} else {
			hsp = 0;
		}
	}
		//turn around
		if (hsp == 0) and (alarm[0] <= 0) alarm[0] = room_speed*random_range(1, 3);
		if (hit) {
			hp -= obj_player.dmg;
			state = "chase"
			hit = 0;
		}
}


