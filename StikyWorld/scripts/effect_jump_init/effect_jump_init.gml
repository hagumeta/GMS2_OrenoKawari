if(!variable_instance_exists(self, "Sname")){
	Sname = part_system_create();
}


var particle1 = part_type_create();
part_type_shape(particle1,pt_shape_smoke);
part_type_size(particle1,0.15,0.30,0,0);
part_type_scale(particle1,1,1);
part_type_color2(particle1,3750201,0);
part_type_alpha1(particle1,0.5);
part_type_speed(particle1,0.40,2,0,0);
part_type_direction(particle1,0,359,0,0);

part_type_blend(particle1,0);
part_type_life(particle1,0,10);
var emitter1 = part_emitter_create(Sname);

jump_emitter = emitter1;
jump_particle = particle1