/// @description 
if (follow != noone) {
	x_to = follow.x;
	y_to = follow.y;	
}

x += (x_to - x)/15; //increasing 25 makes it go slower, lowering it makes it go faster; 
y += (y_to - y)/15;

camera_set_view_pos(view_camera[0], x-(cam_width*0.5), y-(cam_height*0.5));

//parallaxw
if (camera_get_view_x(view_camera[0]) > 0) {
	if (layer_exists("FLeaves")) {
		layer_x("FLeaves", camera_get_view_x(view_camera[0])/16);
	}
	if (layer_exists("FTrees")) {
		layer_x("FTrees", camera_get_view_x(view_camera[0])/16);
	}
	if (layer_exists("BLeaves")) {
		layer_x("BLeaves", camera_get_view_x(view_camera[0])/8);
	}
	if (layer_exists("BTrees")) {
		layer_x("BTrees", camera_get_view_x(view_camera[0])/8);
	}
	if (layer_exists("BBushes")) {
		layer_x("BBushes", camera_get_view_x(view_camera[0])/4);
	}
	if (layer_exists("BackForest")) {
		layer_x("BackForest", camera_get_view_x(view_camera[0])/2);
	}
}