surface_resize(application_surface, RES.WIDTH, RES.HEIGHT); // resize resolution of the game

var windowWidth = RES.WIDTH * RES.SCALE; // resize scale of the window
var windowHeight = RES.HEIGHT * RES.SCALE;

window_set_size(windowWidth, windowHeight);

application_surface_enable(true);


/*
with(all)
{
	x+= 5000;
	y+= 5000;
}

var floorObj = instance_find(oFloor,0);
if(instance_exists(floorObj)) 
{
	floorObj.image_xscale = 100000;
	floorObj.image_yscale = 100000;

}

*/