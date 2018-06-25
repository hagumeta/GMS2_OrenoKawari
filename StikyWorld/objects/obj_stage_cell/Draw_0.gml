draw_self();
if(!exist){
	draw_set_color(c_gray);
	draw_rectangle(x-32, y-32, x+32, y+32, false);
	exit;
}

if(selected){
	draw_set_color(c_red);
	draw_rectangle(x-32, y-32, x+32, y+32, false);
}
draw_set_text_config(fa_center, fa_center, font_demo_20, c_black);
if(selected){
	draw_text(x+3, y+3, stage_num);
}
draw_text(x, y, stage_num);

selected = false;