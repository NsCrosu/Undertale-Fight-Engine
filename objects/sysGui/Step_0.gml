if keyboard_check(vk_ralt){
	if keyboard_check(vk_left){with(objPlayer){x -= 30;}}
	if keyboard_check(vk_right){with(objPlayer){x += 30;}}
	if keyboard_check(vk_up){with(objPlayer){y -= 30;}}
	if keyboard_check(vk_down){with(objPlayer){y += 30;}}
}

if mouse_check_button(mb_left){
	with(objPlayer){
		x = mouse_x;
		y = mouse_y;
	}
}

if mouse_check_button(mb_middle){
	debug_msg(mouse_x);
	debug_msg(mouse_y);
}

if keyboard_check(vk_end){
	if keyboard_check_released(vk_left){room_speed--;}
	if keyboard_check_released(vk_right){room_speed++;}
}

if keyboard_check_released(vk_space){
	var butstr = get_string("stbut[1]", object_get_name(sysGame.but));
	sysGame.but = asset_get_index(butstr);
	sysGame.bkobj = asset_get_index("bk" + string_copy(butstr, 4, string_length(butstr) - 3));
}

if keyboard_check_released(ord("F")){
	var res = show_question("Not A Global Variable?");
	if res{
		var itg = get_string("on:", "");
		var vtg = get_string("vn:", "");
		if itg!="" && vtg!=""{show_message(variable_instance_get(asset_get_index(itg).id, vtg));}
	}else{
		var vtg = get_string("gvn:", "");
		if vtg!=""{show_message(variable_global_get(vtg));}
	}
}

if keyboard_check_released(ord("V")){
	var res = show_question("Not A Global Variable?");
	if res{
		var itg = get_string("tgo:", "");
		var vtg = get_string("tgn:", "");
		var nvtg = get_string("tgnv:", "");
		if (itg!="") && (vtg!=""){variable_instance_set(asset_get_index(itg).id, vtg, real(nvtg));}
	}else{
		var itg = get_string("tggvn:", "");
		var vtg = get_string("tggvv:", "");
		if vtg!=""{variable_global_set(itg, vtg);}
	}
}

if keyboard_check_released(vk_add){
	var script = get_string("script:", "");
	var cr = instance_create(-10, -10, objTypewriter);
	cr.text = "[sound -1][type_speed -1]" + script + "[end]";
}
