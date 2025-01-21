/// @description 
var vx = 0
var vy = 0
var vw = room_width;
var vh = room_height;


if (surface_exists(shadow_surface)) {
	surface_set_target(shadow_surface);
		draw_set_color(#000005);
		draw_set_alpha(.9);
			//gpu_set_blendmode(bm_add);
				draw_rectangle(vx, vy, vw, vh, false);
			//gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		draw_set_color(-1);
		gpu_set_blendmode(bm_subtract);
			if (obj_player.flashlight) {
				draw_sprite_ext(spr_player_glow, image_index, obj_player.x, obj_player.y, image_xscale, image_yscale, image_angle, image_blend, .2);
				draw_sprite_ext(spr_player_flashlight, image_index, obj_player.x, obj_player.y, obj_player.image_xscale, image_yscale, image_angle, image_blend, .8);
				
			} else {
				draw_sprite_ext(spr_player_glow, image_index, obj_player.x, obj_player.y, image_xscale, image_yscale, image_angle, image_blend, .1);
				//draw_sprite_ext(spr_player_flashlight, image_index, obj_player.x, obj_player.y, obj_player.image_xscale, image_yscale, image_angle, image_blend, .8);

			}
			draw_sprite_ext(spr_moonlight, image_index, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), image_xscale, image_yscale, image_angle, image_blend, .75);
		gpu_set_blendmode(bm_normal);
		if (obj_player.flashlight) draw_sprite_ext(spr_player_flashlight, image_index, obj_player.x, obj_player.y, obj_player.image_xscale, image_yscale, image_angle, image_blend, .05);
	surface_reset_target();
} else { 
	shadow_surface = surface_create(room_width, room_height);
}


draw_surface(shadow_surface, view_get_xport(0), view_get_yport(0));