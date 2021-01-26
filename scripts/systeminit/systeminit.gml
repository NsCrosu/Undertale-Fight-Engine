function systeminit(){
	if os_type == os_windows{
		var utd = environment_get_variable("LOCALAPPDATA") + "\\UNDERTALE";
		if directory_exists(utd){
			if file_exists(utd + "\\file0"){
				var file = file_text_open_read(utd + "\\file0");
				global.name = string_upper(file_text_read_string(file));
				file_text_close(file);
				debug_msg("UNDERTALE FILE LOADED!");
				debug_msg("The Name: " + string(global.name));
				if string_length(global.name) > 6{
					global.name = string_copy(global.name, 1, 6);
					debug_msg("NAME LENGTH IS GREATER THAN 6!");
					debug_msg("AUTOMATICALYYT TAKING THE FIRST SIX LETTERS AS THE NAME!");
				}
				for(var char = 1;char <= 6;char++){
					var chf = string_copy(global.name, char, 1);
					if ord(chf) >= 0xa0{
						global.name = "ENGPLZ";
						debug_msg("CHINESE NAME FOUND!");
						debug_msg("NAME CHANGED TO \"ENGPLZ\"!");
					}
				}
				if global.name = ""{
					global.name = "CHARA";
				}
			}else{
				debug_msg("FILE IS NOT EXIST!");
			}
		}else{
			debug_msg("DIRECTROY IS NOT AVAILABLE!");
			debug_msg(utd);
		}
	}
}
