function get_talkaside(but){
	switch(but){
		case 0:
			global.sayfight = "* 你遭遇了, [wait 40]测试wawa1/  [wait 30]和测试tata2!!/[alpha 0.15]其实是空气(";
			break;
		case but1:
			global.sayfight = "* 战斗开始了.";
			break;
		default:
			global.sayfight = "* ...";
			break;
	}
	return global.sayfight;
}
