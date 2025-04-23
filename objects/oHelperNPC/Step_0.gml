/// @description Insert description here
// You can write your code in this editor


var player = instance_find(oPlayer, 0);
if(showPhrase = true && instance_exists(player) && point_distance(player.x, player.y, spacePressedX, spacePressedY) > 48)
{
	showPhrase = false;
}


var gamemode = instance_find(oGameMode, 0);
if(instance_exists(gamemode) && gamemode.eclipseBegin) 
{
	var player = instance_find(oPlayer,0);
	if(instance_exists(player))
	{
			move_towards_point(player.x, player.y, random_range(0.3,0.7));
			x+= random_range(-2, 2);
			y+= random_range(-2, 2);
	}

}





