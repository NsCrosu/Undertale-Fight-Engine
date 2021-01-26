if instance_number(sysGame) > 1{instance_destroy();exit;}
if !instance_exists(sysGui){instance_create_depth(0, 0, 0, sysGui);}
init();
bk_create();
typewriter(talkasideCrx, talkasideCry, get_talkaside(0));
global.lv = 20;
global.bgm = -1;
global.debug = 1;
sf = -1;
but = but1;
bkobj = bk1;
