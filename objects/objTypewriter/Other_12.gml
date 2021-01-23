/// @desc Execute Commands
var command = list_command;

switch(command[|0]){
	case "speed":
		if is_real(command[|1]){
			if command[|1] >= 0{
				try{
					type_speed = command[|1];
				}catch(_){
					type_speed = -1;
					if textCommandShowError{
						debug_msg("错误, \"type_speed\"设置不正确, 请确保值是 -1, 0 或正数中的一个\nERROR! The \"type_speed setting\" is incorrect, please make sure the value is one of -1, 0 or a positive number.\n");
					}
				}
			}
		}
		break;
		
	case "color":
	case "colour":
	case "col":
		var str2col = function(string){
			var color;
			switch(string){
				case "white":
				case "clear":   color = ca.white;  break;
				case "black":   color = ca.black;  break;
				case "green":   color = ca.green;  break;
				case "aqua":
				case "cyan":    color = ca.aqua;   break;
				case "blue":    color = ca.blue;   break;
				case "purple":  color = ca.pink;   break;
				case "pink":
				case "fuchsia": color = ca.pink;   break;
				case "red":     color = ca.red;    break;
				case "orange":  color = ca.orange  break;
				case "yellow":  color = ca.yellow; break;
			}
			return color;
		}
		if is_string(command[|1]){
			try{
				col = str2col(command[|1]);
			}catch(_){
				col = ca.white;
				if textCommandShowError{
					debug_msg("错误, 无法解释给定的颜色字符串\nERROR! Could not execute the given color string.\n");
				}
			}
		}else if is_real(command[|1]){
			col = real(command[|1]);
		}else{
			if textCommandShowError{
				debug_msg("错误, 无法识别的颜色类型\"" + string(command[|1]) + "\", 请确保输入值为正数\nERROR! Could not decode\"" + string(command[|1]) + "\", please ensure it is a positive integer.\n");
			}
		}
		break;
	
	case "alpha":
		if is_real(command[|1]){
			alpha = command[|1];
		}else{
			if textCommandShowError{
				debug_msg("错误, 非法\"alpha\"值.请确保值为\"real\"类型\nERROR! Illegal \"alpha\" value. Please make sure the value is a \"real\" type.\n");
			}
		}
		break;
	case "wait":
		if is_real(command[|1]){
			if command[|1] >= 0{
				wait = command[|1];
			}else{
				wait = 0;
				if textCommandShowError{
					debug_msg("错误, 非法\"wait\"数值.请确保值为非负数\nERROR! Illegal \"wait\" value. Please make sure the value is non-negative.\n");
				}
			}
		}else{
			if textCommandShowError{
				debug_msg("错误, 非法\"wait\"数值.请确保值为非负数\nERROR! Illegal \"wait\" value. Please make sure the value is non-negative.\n");
			}
		}
		break;
	case "pause":
		paused = true;
		wait = 0;
		char_per_time = 0;
		break;
	case "zable":
		zable = bool(command[|1]);
		break;
	case "xable":
		xable = bool(command[|1]);
		break;
	case "font":
		var target = -1;
		if is_real(command[|1]){
			target = command[|1];
		}else{
			target = asset_get_index(command[|1]);
		}
		if font_exists(target){
			font = target;
		}else{
			if textCommandShowError{
				debug_msg("错误, \"" + string(command[|1]) + "\"不是一个有效的字体资源\nERROR! \"" + string(command[|1]) + "\" is not a vaild font asset.\n")
			}
		}
		edited = true;
		break;
	case "sound":
	case "voice":
		var target = -1;
		if is_real(command[|1]){
			target = command[|1];
		}else{
			target = asset_get_index(command[|1]);
		}
		if audio_exists(target){
			sound = target;
		}else{
			if textCommandShowError{
				debug_msg("错误, \"" + string(command[|1]) + "\"不是一个有效的声音资源\nERROR! \"" + string(command[|1]) + "\" is not a vaild sound asset.\n")
			}
		}
		edited = true;
		break;
	case "clear":
		try{
			textClear;
		}catch(_){
			if textCommandShowError{
				debug_msg("错误, 打字机在清理字符实例时遇到未知问题\nERROR! Typewriter encountered an unknown problem while cleaning up character instances.\n");
			}
		}
		break;
	case "scale":
		if is_real(command[|1]){
			xscale = command[|1];
			yscale = command[|1];
		}
		edited = true;
		break;
	case "xscale":
		if is_real(command[|1]){
			xscale = command[|1];
		}
		edited = true;
		break;
	case "yscale":
		if is_real(command[|1]){
			yscale = command[|1];
		}
		edited = true;
		break;
	case "xspace":
		if is_real(command[|1]){
			xspace = command[|1];
		}
		edited = true;
		break;
	case "yspace":
		if is_real(command[|1]){
			yspace = command[|1];
		}
		edited = true;
		break;
	case "insert":
	case "paste":
		if is_real(command[|1]) || is_string(command[|1]){
			text = string_insert(string(command[|1]), text, char_i + 1);
		}
		break;
	case "effect":
		if is_real(command[|1]){
			effect = command[|1];
		}
		edited = true;
		break;
	case "depth":
		if is_real(command[|1]){
			depth = command[|1];
		}
		break;
	case "script":
	case "scr":
		var target = -1;
		if is_real(command[|1]){
			target = command[|1];
		}else{
			target = asset_get_index(command[|1]);
		}
		if script_exists(target){
			try{
				switch(ds_list_size(command) - 2){
					case 0:
						script_execute(target);
						break;
					case 1:
						script_execute(target, command[|2]);
						break;
					case 2:
						script_execute(target, command[|2], command[|3]);
						break;
					case 3:
						script_execute(target, command[|2], command[|3], command[|4]);
						break;
					case 4:
						script_execute(target, command[|2], command[|3], command[|4], command[|5]);
						break;
					case 5:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6]);
						break;
					case 6:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7]);
						break;
					case 7:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8]);
						break;
					case 8:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9]);
						break;
					case 9:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9], command[|10]);
						break;
					case 10:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9], command[|10], command[|11]);
						break;
					case 11:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9], command[|10], command[|11], command[|12]);
						break;
					case 12:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9], command[|10], command[|11], command[|12], command[|13]);
						break;
					case 13:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9], command[|10], command[|11], command[|12], command[|13], command[|14]);
						break;
					case 14:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9], command[|10], command[|11], command[|12], command[|13], command[|14], command[|15]);
						break;
					case 15:
						script_execute(target, command[|2], command[|3], command[|4], command[|5], command[|6], command[|7], command[|8], command[|9], command[|10], command[|11], command[|12], command[|13], command[|14], command[|15], command[|16]);
						break;
				}
			}catch(_){
				if textCommandShowError{
					debug_msg("错误, 打字机在执行脚本时发生未知问题\nERROR! The typewriter encountered an unknown problem while executing the script.\n");
				}
			}
		}
	break;
}
