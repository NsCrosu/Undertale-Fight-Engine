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
}
