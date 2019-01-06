var _pre_color, _pre_alpha;
_pre_alpha = draw_get_alpha();
_pre_color = draw_get_color();


draw_set_font(self.font);
draw_set_alpha(image_alpha);
draw_set_color(image_blend);
draw_text_transformed(x, y, self.letter, image_xscale, image_yscale, image_angle);


draw_set_alpha(_pre_alpha);
draw_set_color(_pre_color);