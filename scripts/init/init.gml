function init(){
	animinit();
	systeminit();
	
	#macro playerCrx 320
	#macro playerCry 320
	#macro talkCrx 400
	#macro talkCry 100
	#macro talkasideCrx 30 + 16
	#macro talkasideCry 250 + 16
	
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
	enum crdepth{
		dui = 12,
		dbutton = 11,
		dplayer = -12,
		dbut = 10,
		dbk = -11,
		dmonster = 10
	}
}
