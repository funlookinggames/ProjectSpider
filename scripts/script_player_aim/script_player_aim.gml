// 
function script_player_aim(){
	var cart = noone;
	if (aim < 30) aim += 0.25;
	if (!instance_exists(obj_player_accuracy)) accuracy = instance_create_layer(x, y, layer, obj_player_accuracy);
	if (sprite_index != spr_player_aim and !shot) sprite_index = spr_player_aim;
	if (action_bt) and ((!shot) or (canshoot)) {
		//remember to make this order right, the lack of parenteses after "and" gave me problems
		sprite_index = spr_player_shoot;
		image_speed = 1;
		image_index = 0;
		if (aim > -10) aim -= 20;
		shot = 1;
		canshoot = 0;
		
		accuracy.image_xscale = image_xscale;
		
		if (accuracy.target1 != noone) {
			
			if (distance_to_object(accuracy.target1)>300) {
				precision = 10;
			} else if (distance_to_object(accuracy.target1)>200) {
				precision = 25;
			} else if (distance_to_object(accuracy.target1)>150) {
				precision = 35;
			} else if (distance_to_object(accuracy.target1)>120) {
				precision = 50; 	
			}  else if (distance_to_object(accuracy.target1)>100) {
				precision = 70;
			}
			bullet = random(100);
			if (bullet < (precision + aim)) accuracy.target1.hit = true;
		}
		instance_destroy(accuracy);
	}
	if (shot) {
		if (image_index >= 9) {
			shot = 0;
			
		} 

	}
		if (sprite_index == spr_player_shoot) and (image_index >= 5) {
			//canshoot = 1; turned off for the demo
			/*if (cart == noone) {
				cart = instance_create_layer(x, y-44, layer, obj_pistol_cartridge);
				if (image_xscale == 1) {
					cart.spd = -1;
					cart.rot = -.5;
				} else {
					cart.spd = 1;
					cart.rot = .5;
				}
			}*/
		}
	if (!aim_bt) and (!shot) {
		sprite_index = spr_player_stand;
		state = "normal";
		if (instance_exists(obj_player_accuracy)) instance_destroy(accuracy);
	}
	
	
	/*if (instance_exists(obj_hunter)) 
	if (distance_to_object(obj_hunter) {
*/
}