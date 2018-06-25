draw_sprite(spr_stiky_death, 0, 900, 50);
draw_set_text_config(fa_left, fa_center, font_demo_20, c_black);
draw_text(940, 50, string(death));
draw_text(30, 50, "[R] リトライ");
draw_text(30, 100, "[S] ステージ選択へ");

/*
draw_text(100, 150, "x "+string(x));
draw_text(100, 200, "y "+string(y));

if(place_free(x, y+1)){
	draw_circle(800, 50, 10, false);
}
if(place_free(x, y-1)){
	draw_circle(800, 100, 10, false);
}
if(place_free(x-1, y)){
	draw_circle(800, 150, 10, false);
}
if(place_free(x+1, y)){
	draw_circle(800, 200, 10, false);
}
if(place_free(x, y)){
	draw_circle(800, 250, 10, false);
}
if(!place_free(x, y+1) && !place_free(x, y-1) && !place_free(x-1, y) && !place_free(x+1, y) && !place_free(x, y)){
	draw_circle(800, 350, 10, false);
}*/