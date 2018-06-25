if(goal_flag){
	draw_set_text_config(fa_center, fa_center, font_demo_100, c_black);
	draw_text(512, 300, "STAGE CLEAR");
	draw_set_font(font_demo_50);
	draw_text(512, 550, "death : " + string(obj_player.death));
}