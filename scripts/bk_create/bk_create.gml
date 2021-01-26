function bk_create(){
	mk[1] = instance_create_depth(30, 250, crdepth.dbk, objBlock);
	mk[1].xs = 575;
	mk[1].image_blend = image_blend;
	mk[2] = instance_create_depth(30, 250, crdepth.dbk, objBlock);
	mk[2].ys = 135;
	mk[2].image_blend = image_blend;
	mk[3] = instance_create_depth(30, 385, crdepth.dbk, objBlock);
	mk[3].xs = 575;
	mk[3].image_blend = image_blend;
	mk[4] = instance_create_depth(605, 250, crdepth.dbk, objBlock);
	mk[4].ys = 135;
	mk[4].image_blend = image_blend;
	global.bkxs = 30;
	global.bkys = 250;
	global.bkws = 580;
	global.bkhs = 140;
}
