// Script player has left the range for attack in the preparing state and now the spider will do a charge on the player.
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_hunter_charge(){
	if (!grabbed) {
		if (image_index > 3) {
			image_speed = 0;
			charging = true;
		
		
			//Check player positio
			if (x > obj_player.x) {
				facing = "left";
				hsp = -(spd*3);
				image_xscale = -1;
			} else {
				facing = "right";
				hsp = spd*3;
				image_xscale = 1;
			}

		} else {
			if (x > obj_player.x) {
				facing = "left";
				hsp = -(spd/5);
				image_xscale = -1;
			} else {
				facing = "right";
				hsp = spd/5;
				image_xscale = 1;
			}
		}
	} else {
		hsp = 0;
		state = "grab";
	}
	if (hit) {
		hp -= obj_player.dmg*2;
		hit = 0;
	}
}