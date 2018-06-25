if(global.trigger[trg])
{
	if(image_yscale > 0){
		image_yscale -= 0.2;
	}
	image_blend = c_blue;
}else{
	if(image_yscale < yscale){
		image_yscale += 0.2;
	}
	image_blend = c_red;
}