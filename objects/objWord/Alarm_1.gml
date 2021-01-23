if effect == -1{
	effect = -0.5;
	xoffset = 0;
	yoffset = 0;
}
switch(effect){
	default:
	case -1:
		effect = -0.5;
		xoffset = 0;
		yoffset = 0;
		break;
	case 0:
		effect = 0.5;
		alarm[2] = random_range(100, 200);
		break;
}
alarm[1] = 1;
