/// @description Insert description here
// You can write your code in this editor

targetX = x;
targetY = y;

var player = instance_find(oPlayer, 0);

if(player)
{
	targetX = player.x;
	targetY = player.y;
}


cameraSpeed = 5;
shakeMagn = 0;

function UpdateMovement()
{
	var player = instance_find(oPlayer, 0);

	if (instance_exists(oPlayer)) 
	{
	    var smoothFactor = 0.12;
    
	    targetX = oPlayer.x;
	    targetY = oPlayer.y;
		
		randomize();
		var gamemode = instance_find(oGameMode,0);
		if(instance_exists(gamemode) && gamemode.hellBegin)
		{
			shakeMagn = gamemode.shakeMagn;	
		}
		
		
	    x = lerp(x, targetX, smoothFactor) + random_range(-shakeMagn, shakeMagn);
	    y = lerp(y, targetY, smoothFactor) + random_range(-shakeMagn, shakeMagn);

	    camera_set_view_pos(view_camera[0], x - RES.WIDTH / 2, y - RES.HEIGHT / 2);
	}

}

view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
