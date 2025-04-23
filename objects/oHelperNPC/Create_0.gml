/// @description Insert description here
// You can write your code in this editor


phrases = ds_list_create();
ds_list_add(phrases, "You will atone for the sins that were fermenting in your mind.");
ds_list_add(phrases, "The Sun has dropped somewhere to the west.");
ds_list_add(phrases, "The Sun has dropped somewhere to the west.");
ds_list_add(phrases, "Jesus will be in posession of your memory and sanity.");
ds_list_add(phrases, "Once the sun soaks in blood and viscera, the Jesus will arrive.");
ds_list_add(phrases, "You will listen to the voice of gods. The reprisal is imminent.");
ds_list_add(phrases, "!!!!!Dump the sun into t<he well!!!!!#!#! ");
ds_list_add(phrases, "!!!!!Dump the sun into t<he well!!!!!#!#! ");
ds_list_add(phrases, "!!!!!Dump the sun into t<he well!!!!!#!#! ");


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
	randomize();
	currentPhrase = random_range(0, ds_list_size(phrases)-1);
	
	var gamemode = instance_find(oGameMode, 0);
	if(!gamemode) return;
	gamemode.playShowMessageSound();
	
}