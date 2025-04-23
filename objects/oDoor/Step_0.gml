/// @description Insert description here
// You can write your code in this editor

var player = instance_find(oPlayer, 0);
if(instance_place(x,y+1, player) && player.hasKey)
{
	var gameMode = instance_find(oGameMode, 0);
	if(instance_exists(gameMode)) gameMode.playDoorBreak();
	instance_destroy();
}


