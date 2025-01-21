// This is when the spider is preparing for attack, on the prowl
function script_hunter_prepare(){
	if (distance_to_object(obj_player) > 15) {
		if (distance_to_object(obj_player) > 100) {
			sprite_index = spr_hunter_charge;
			image_index = 0;
			image_speed = 1;
			state = "charge";
		}
		//Check player position
		if (x > obj_player.x) {
			facing = "left";
			hsp = -(spd-(spd/3)); //spd here is 0.75
		} else {
			facing = "right";
			hsp = spd-(spd/3); //spd here is 0.75
		}
	} else { 
		if (prowl >= prowlmax) { //prowlmax = random_range(room_speed*1, room_speed*2);
			state = "attack";
			sprite_index = spr_hunter_attack;
			image_index = 0;
			image_speed = random_range(image_speed-(image_speed/10), image_speed-(image_speed/10));
			prowl = 0;
		} else {
			prowl++;
			hsp = 0;
		}
	}
	if (hit) {
		hit = 0;
		hp -= obj_player.dmg;
	}
}