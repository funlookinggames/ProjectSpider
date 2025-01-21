 /// @description 
switch (facing) {
	case "left":
		image_xscale = -1;
		break;
	case "right":
		image_xscale = 1;
}

switch (state) {
	case "idle":
		script_execute(script_hunter_idle);
		break;
	case "chase":
		script_execute(script_hunter_chase);
		break;
	case "prepare":
		script_execute(script_hunter_prepare);
		break;
	case "attack":
		script_execute(script_hunter_attack);
		break;
	case "charge": 
		script_execute(script_hunter_charge);
		break;
	case "grab":
		script_execute(script_hunter_grab);
		break;
	case "stunned":
		script_execute(script_hunter_stunned);
		break;
}

if (hit) {
	image_blend = c_aqua;
	if (alarm[2] < 0) alarm[2] = 30;
}

// Inherit the parent event
event_inherited();