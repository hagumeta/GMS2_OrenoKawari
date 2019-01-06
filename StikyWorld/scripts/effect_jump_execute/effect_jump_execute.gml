if(!variable_instance_exists(self, "jump_emitter")){
	effect_jump_init();
}

part_emitter_region(Sname,jump_emitter,x+1,x,y+1,y,ps_shape_ellipse,1);
//part_emitter_stream(Sname,smalk_emitter,smalk_particle,5);

part_particles_create(Sname, x, y+sprite_height/2, jump_particle, 8);