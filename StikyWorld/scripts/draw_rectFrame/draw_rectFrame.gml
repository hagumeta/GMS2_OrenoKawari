//影と枠付きの四角フレームを描画する

///@arg lx
///@arg ly
///@arg width
///@arg height
///@arg color

var lx,
	ly,
	width,
	height,
	TopColor,
	CentorColor,
	FrameColor;
	
lx = argument0;
ly = argument1;
width = argument2;
height = argument3;
TopColor = argument4;

CentorColor = merge_color(TopColor, c_white, 0.8);
FrameColor = merge_color(TopColor, c_black, 0.2);

draw_set_color(c_black);
draw_rectangle(lx+5, ly+5, lx+width+5, ly+height+5, false);
draw_set_color(c_white);

draw_rectangle_color(lx, ly, lx+width, ly+height/2, TopColor, TopColor, CentorColor, CentorColor, false);
draw_rectangle_color(lx, ly+height/2, lx+width, ly+height, CentorColor, CentorColor, TopColor, TopColor, false);

draw_rectangle_ext(lx, ly, lx+width, ly+height, 3, FrameColor);