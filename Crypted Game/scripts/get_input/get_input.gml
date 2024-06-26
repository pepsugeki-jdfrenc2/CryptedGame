function get_input(){
	//Check Player Input
	mvUp = keyboard_check(ord("W"));
	mvDwn = keyboard_check(ord("S"));
	mvLft = keyboard_check(ord("A"));
	mvRht = keyboard_check(ord("D"));
	
	vert = mvDwn - mvUp;
	hor  = mvRht - mvLft;
	
	//Adjust Speed Values Based on Inputs
	vsp = approach(vsp, -vert * speedNorm, 5);
	hsp = approach(hsp, -hor * speedNorm, 5);
	
	if((mvRht - mvLft) != 0 && (mvDwn - mvUp) != 0){
		vsp = approach(vsp, -vert * speedDiag, 5);
		hsp = approach(hsp, -hor * speedDiag, 5);
	}
	
	
	
	
	//Move Character by relative speeds
	y += vsp;
	x += hsp;
}