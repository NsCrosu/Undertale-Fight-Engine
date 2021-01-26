/// @arg color*
/// @arg alpha*
function bk_coverin(){
	var col = ca.black;
	var alp = 1;
	if argument_count >= 1{col = argument[0];}
	if argument_count >= 2{alp = argument[1];}
	draw_set_alpha(alp);
	draw_set_color(col);
	draw_rectangle(mk[2].x + 5, mk[1].y + 5, mk[4].x - 1, mk[3].y - 1, false);
	draw_set_alpha(1);
	draw_set_color(ca.white);
}

/// @arg color*
/// @arg alpha*
function bk_coverout(){
	var col = ca.black;
	var alp = 1;
	if argument_count >= 1{col = argument[0];}
	if argument_count >= 2{alp = argument[1];}
	draw_set_alpha(alp);
	draw_set_color(col);
	draw_rectangle(0, 0, mk[1].x - 1, 480, false);
	draw_rectangle(mk[4].x + 5, 0, 640, 480, false);
	draw_rectangle(0, 0, 640, mk[2].y - 1, false);
	draw_rectangle(0, mk[3].y + 5, 640, 480, false);
	draw_set_alpha(1);
	draw_set_color(ca.white);
}
