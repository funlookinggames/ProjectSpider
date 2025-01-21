//  The enemy is close enough to the player and is ready to attack;
function script_hunter_attack(){
	//por enquanto como não tenho animações para amarrar esse script com frames
	//vou ser obrigado a usar alarms pra isso temporariamente
	//AAAAA EU POSSO USAR SPRITES DE CORES DIFERENTES
	//prepare attack
	if (sprite_index != spr_hunter_attack) sprite_index = spr_hunter_attack;
	if (image_index < 4) {
		if (hit) {
			hp -= obj_player.dmg;
			state = "stunned";
		}
		
	//attack start
	} else if (image_index < 8) {
		if (!instance_exists(obj_hunter_attack)) {
			var hitbox = instance_create_layer(x, y, layer, obj_hunter_attack);
			hitbox.creator = id;
				with (hitbox) {
					att = obj_hunter.att;
					image_xscale = obj_hunter.image_xscale;
				}
		}
		
		var attack = true;
		
		//recover
	} else if (image_index < 12) {
		attack = false;
		sprite_index = spr_hunter_mask;
		image_speed = 1;
		state = "chase";
	}
	

	//show_debug_message(string(attack));
}