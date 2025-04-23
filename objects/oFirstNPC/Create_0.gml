/// @description Insert description here
// You can write your code in this editor

phrases = ds_list_create();
ds_list_add(phrases, "The key is some way to the east of here.");
ds_list_add(phrases, "Great. My friend will tell you how to escape this place.");


spacePressedX = 0;
spacePressedY = 0;

triggerRadius = 50;

currentPhrase = 0;
showPhrase = false;

function ShowPhrase()
{ // Item condition asks for the item to check. E.
	var player = instance_find(oPlayer, 0);
	if(!player) return;
	if(player.hasKey)
	{
		ds_list_find_value(phrases, 1); // Ave Bandera
		currentPhrase = 1
		showPhrase = true;
		
	}
	else
	{
		ds_list_find_value(phrases, 0); // Slava Ukraine
		currentPhrase = 0;
		showPhrase = true;
	}
	spacePressedX = player.x;
	spacePressedY = player.y;
	
	var gamemode = instance_find(oGameMode, 0);
	if(!gamemode) return;
	gamemode.playShowMessageSound();
	
}








