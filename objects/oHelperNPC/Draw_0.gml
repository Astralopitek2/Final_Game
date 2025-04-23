/// @description Insert description here
// You can write your code in this editor


draw_self();


var BoxSizeX = 228;
var BoxSizeY = 64;

if(showPhrase)
{
	draw_rectangle_color(spacePressedX - BoxSizeX/2, spacePressedY - 16 - BoxSizeY, spacePressedX + BoxSizeX/2, spacePressedY - 16, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(spacePressedX - BoxSizeX/2 + 1, spacePressedY - 16 - BoxSizeY + 1, spacePressedX + BoxSizeX/2 - 1, spacePressedY - 16 - 1, c_white, c_white, c_white, c_white, false);
	draw_rectangle_color(spacePressedX - BoxSizeX/2 + 2, spacePressedY - 16 - BoxSizeY + 2, spacePressedX + BoxSizeX/2 - 2, spacePressedY - 16 - 2, c_black, c_black, c_black, c_black, false);
	draw_text_ext_color(spacePressedX - BoxSizeX/2 + 2, spacePressedY - 16 - BoxSizeY + 2, ds_list_find_value(phrases, currentPhrase), 18, BoxSizeX - 3,c_red,c_orange,c_red,c_orange,1);
}

