function typewriter(x, y, string){
	var cr = instance_create_depth(x, y, crdepth.dbk, objTypewriter);
	cr.text = string;
	return cr;
}
