var a = instance_create_depth(x, y, depth, obj_player_corpse_fired);
a.sprite_index = sprite_index;

a.image_xscale = image_xscale;
a.image_yscale = image_yscale;

a.image_speed = image_speed;
a.image_angle = image_angle;
a.image_blend = image_blend;
a.image_alpha = image_alpha;
a.image_index = image_index;
a.visible = visible;

instance_destroy();