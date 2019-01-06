//(x1, y1, x2, y2, width, color)
///@arg lx
///@arg ly
///@arg rx
///@arg ry
///@arg width
///@arg rot
///@arg color

var ltx = argument0;
var lty = argument1;
var rbx = argument2;
var rby = argument3;
var line_width = argument4;
var rotation = 360-argument5;
var col = argument6;

var width = rbx-ltx;
var height = rby-lty;


var ltxx = ltx;
var ltyy = lty;

var lbxx = ltx - height*dsin(rotation);
var lbyy = lty + height*dcos(rotation);

var rtxx = ltx + width*dcos(rotation);
var rtyy = lty + width*dsin(rotation);

var rbxx = lbxx + rtxx - ltx;
var rbyy = lbyy + rtyy - lty;

draw_set_color(col);
draw_line_width(ltxx, ltyy, rtxx, rtyy, line_width);
draw_line_width(ltxx, ltyy, lbxx, lbyy, line_width);
draw_line_width(rbxx, rbyy, rtxx, rtyy, line_width);
draw_line_width(rbxx, rbyy, lbxx, lbyy, line_width);
draw_set_color(c_white);