// vartical

y = floor(y);
other.y = floor(other.y);
x = floor(x);
other.x = floor(other.x);
//horizontal
var xx = -other.hspeed + hspeed;


if (!place_free(x,y+vspeed)) {

    if (vspeed < 0) {    // up
        move_contact_solid(90,abs(vspeed));
    }
    if (vspeed >= 0) {    // down
        move_contact_solid(270,abs(vspeed));
		stand = true;
    }
    vspeed = 0;
}else{
	if (!place_free(x+xx, y)) {
	    if (xx < 0) {    // left
	        move_contact_solid(180,abs(xx));
	    }
	    if (xx > 0) {    // right
	        move_contact_solid(0,abs(xx));
	    }
		if(vspeed > 0 && hspeed != 0){
			wall_catch = true;
			image_xscale = sign(hspeed);
		}
	    hspeed = 0;
	}
}


if(other.hspeed > 0){
	move_contact_solid(0, abs(other.hspeed));
}else{
	move_contact_solid(180, abs(other.hspeed));
}

if(other.vspeed < 0){
	move_contact_solid(90, abs(other.vspeed));
}else{
	move_contact_solid(270, abs(other.vspeed));
}