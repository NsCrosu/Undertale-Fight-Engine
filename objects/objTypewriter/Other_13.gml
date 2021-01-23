/// @desc Clear Current Words
var i = 0;
repeat(ds_list_size(list_words)){
	var j = ds_list_find_value(list_words, i);
	with(j){instance_destroy();}
	i++;
}
ds_list_clear(list_words);
char_x = 0;
char_y = 0;
