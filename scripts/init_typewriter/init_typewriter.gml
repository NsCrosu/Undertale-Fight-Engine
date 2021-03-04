function init_typewriter(){
	#macro textType event_user(0)
	#macro textNewLine event_user(1)
	#macro textCommandExecute event_user(2)
	#macro textClear event_user(3)
	#macro textCharMoveNext char_i++
	
	#macro textTagReturn "/"
	#macro textCommandTagOpen "["
	#macro textCommandTagClose "]"
	#macro textCommandTagBreak " "
	#macro textCommandShowError true
	
	#macro textDefaultFontEN fntdetermine
	#macro textDefaultFontCN fntdeterminecn
	#macro textDefaultSound sndTXT
	#macro textDefaultEffect 0
	
	enum ca{
		white = c_white,
		black = c_black,
		green = 65280,
		aqua = c_aqua,
		blue = c_blue,
		purple = 16711808,
		pink = 16711935,
		red = c_red,
		orange = 33023,
		yellow = c_yellow
	}
}
