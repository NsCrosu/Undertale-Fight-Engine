/// @function scrTypeWriter(x, y, string)
/// @parma {real} x
/// @parma {real} y
/// @parma {string} string
function typewriter(x, y, string){
	var cr = instance_create_depth(x, y, insert_your_dbk_here, objTypewriter);
	cr.text = string;
	return cr;
}
