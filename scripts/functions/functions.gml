function debug_msg(string){
	show_debug_message(string);
}

function instance_create(x, y, obj){
	return instance_create_depth(x, y, 0, obj);
}

function wa(){
	_d = array_create(15, 0);
}

function sine(durtime, change, uid){
	if(_d[uid] < 90){_d[uid] += 90/(durtime);}else{_d[uid] = 90;}
	return(change*sin(_d[uid]*pi/180));
}
