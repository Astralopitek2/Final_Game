/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y, oPlayer))
{
	var gamemode = instance_find(oGameMode, 0);
	if(!gamemode) return;
	gamemode.playFinishLevelSound();
	room_goto(rmStart);
}