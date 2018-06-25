draw_set_color(choose(c_white, c_black));
draw_sprite(sprite_index, 0, x, y);
draw_set_color(c_white);
repeat(irandom(5)){
	draw_sprite(spr_player_erectro, irandom(4), x+irandom_range(-2, 2), y+irandom_range(-2,2));
}