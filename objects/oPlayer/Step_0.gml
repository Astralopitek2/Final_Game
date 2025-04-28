///@feather ignore GM2017


UpdatePlayerMovement();
UpdateAnimation();
CheckPickUpKey();
CheckPickUpSun();



if(keyboard_check_pressed(vk_space))
{
	var npcNearest = instance_nearest(x,y, oNPCParent);
	
	if(instance_place(x + 1,y, npcNearest) || instance_place(x - 1,y, npcNearest) || instance_place(x,y+1, npcNearest) || instance_place(x,y-1, npcNearest))
	{
		npcNearest.ShowPhrase();
	}
	else if(npcNearest.showPhrase)
	{
		npcNearest.ShowPhrase();
	}
	
	// ----------------- CHECK WELL
	if(instance_place(x-1, y-1, oWell) && hasSun)
	{
		var gamemode = instance_find(oGameMode,0);
		if(instance_exists(gamemode))
		{
			gamemode.startEclipse();
		}
	}
	
}



if(keyboard_check(ord("C")) && room == rmLevel1)
{
	var gamemode = instance_find(oGameMode,0);
	if(instance_exists(gamemode))
	{
		gamemode.SpawnHelper(x,y);
	}
}

