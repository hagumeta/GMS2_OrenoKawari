
// Inherit the parent event
event_inherited();

hspeed = move_speed * image_xscale;


turn_flag = false;

gravity = 1;

field = instance_create_depth(x, y, depth-1, obj_block_transformed);
field.image_yscale = 0.2;
field.image_xscale = 2;
field.x = x-field.sprite_width/2