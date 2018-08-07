/// @desc テキストの描画

//左上に統一
draw_set_font(font_demo_20);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_text_ext(x, y, print, 50, print_width);

if(stay){
	draw_sprite(spr_cursor, 0, x+print_width, y+200);	
}