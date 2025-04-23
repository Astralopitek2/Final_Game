/// @description Insert description here
// You can write your code in this editor

if(eclipseBegin && global.eclipseCount > 30)
{
	with(all)
	{
		image_blend = make_color_rgb(255,global.eclipseCount, global.eclipseCount);
	}
}
else if(eclipseBegin && global.eclipseCount < 30)
{
	with(all)
	{
		image_blend =  make_color_rgb(255,0,0);
	}

}

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

if(!hellBegin)
{
	draw_text_ext_color(cam_x, cam_y, "Press 'S' to summon.", 18, -1, c_red,c_orange,c_red,c_orange,1);
}

