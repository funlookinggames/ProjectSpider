/// @description 
//get inputs
script_player_inputs();

switch (state) {
	case "normal":
		script_execute(script_player_normal);
		break;
	case "aim": 
		script_execute(script_player_aim);
		break;
	case "grabbed":
		script_execute(script_player_grabbed);
		break;
}