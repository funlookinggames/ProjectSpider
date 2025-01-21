/// @description 

with (obj_player) {
	if (state == "aim") {
		if ((sprite_index == spr_player_shoot) and (image_index == 2)) {
			var shoots = noone;
			if (shoots == noone) shoots = audio_play_sound(snd_m1911_shot, 100, false, 1);
		}
	}
	if (state == "normal") and (sprite_index == spr_player_walk) {
		switch (round(image_index)) {
			case 0:
				break;
			case 1:
				break;
			case 2:
				break;
			case 3:
				if (random_range(1, 2) < 1.5) {
					if (!audio_is_playing(snd_footstep_dirt1)) audio_play_sound(snd_footstep_dirt1, 100, false, 0.5);
				} else { 
					if (!audio_is_playing(snd_footstep_dirt3)) audio_play_sound(snd_footstep_dirt3, 100, false, 0.5);
				}
				break;
			case 4:
				break;
			case 5:
				break;
			case 6:
				break;
			case 7:
					if (random_range(1,2) < 1.5) {
						if (!audio_is_playing(snd_footstep_dirt2)) audio_play_sound(snd_footstep_dirt2, 100, false, 0.5);
					} else { 
						if (!audio_is_playing(snd_footstep_dirt4)) audio_play_sound(snd_footstep_dirt4, 100, false, 0.5);
					}
				break;
		}
	}
	if (state == "normal") and (sprite_index == spr_player_run) {
		switch (round(image_index)) {
			case 0:
				break;
			case 1:
				break;
			case 2:
				if (random_range(1, 2) < 1.5) {
					if (!audio_is_playing(snd_footstep_dirt1)) audio_play_sound(snd_footstep_dirt1, 100, false, 0.5);
				} else { 
					if (!audio_is_playing(snd_footstep_dirt3)) audio_play_sound(snd_footstep_dirt3, 100, false, 0.5);
				}
				break;
			case 3:

				break;
			case 4:
				break;
			case 5:
				break;
			case 6:
					if (random_range(1,2) < 1.5) {
						if (!audio_is_playing(snd_footstep_dirt2)) audio_play_sound(snd_footstep_dirt2, 100, false, 0.5);
					} else { 
						if (!audio_is_playing(snd_footstep_dirt4)) audio_play_sound(snd_footstep_dirt4, 100, false, 0.5);
					}
				break;
			case 7:

				break;
		}
	}
}