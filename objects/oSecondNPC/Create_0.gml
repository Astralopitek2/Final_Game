/// @description Insert description here
// You can write your code in this editor

phrases = ds_list_create();
ds_list_add(phrases, "The exit is north of here, hidden behind a tree.");


spacePressedX = 0;
spacePressedY = 0;

triggerRadius = 50;

currentPhrase = 0;
showPhrase = false;

function ShowPhrase()
{ // Item condition asks for the item to check. E.
	var player = instance_find(oPlayer, 0);
	if(!player) return;
	
	showPhrase = true;
	spacePressedX = player.x;
	spacePressedY = player.y;
	
	var gamemode = instance_find(oGameMode, 0);
	if(!gamemode) return;
	gamemode.playShowMessageSound();
	
}








