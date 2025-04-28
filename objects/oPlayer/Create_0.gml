///@feather ignore GM2017
randomize();

hsp = 0;
vsp = 0;
walksp = 1;
hasKey = false;
hasSun = false;
canMoveX = true;
canMoveY = true;

spacePressedX = 0;
spacePressedY = 0;

keyQueue = ds_list_create();
directionKey = ord("S");

function CheckCollision()
{
	//Horizontal collision
	if(place_meeting(x+hsp, y, oCollision)) // if hitting wall in next step:
	{
		while(!place_meeting(x+sign(hsp), y, oCollision)) // get as close to the wall as possible, until 0 pixels are left
		{
			x += sign(hsp);	// add/subtract 1 to x, depending on direction
		}
		canMoveX = false; // when facing wall, can't move
	}else 
	{
		canMoveX = true;
	}
	//Vertical collision
	if(place_meeting(x, y+vsp, oCollision)) 
	{
		while(!place_meeting(x, y+sign(vsp), oCollision))
		{
			y += sign(vsp);	
		}
		canMoveY = false;
	}else 
	{
		canMoveY = true;
	}	
}

function UpdateKeyQueue()
{
	var keys = [ord("D"), ord("A"), ord("W"), ord("S")];

	for (var i = 0; i < array_length(keys); i++) {
	    var key = keys[i];

	    if (keyboard_check_pressed(key)) {
	        if (!ds_list_find_value(keyQueue, key)) {
	            ds_list_add(keyQueue, key);
	        }
	    }

	    if (keyboard_check_released(key)) {
	        var index = ds_list_find_index(keyQueue, key);
	        if (index != -1) {
	            ds_list_delete(keyQueue, index);
	        }
	    }
	}
}


function UpdatePlayerMovement()
{
	
	var key_left = keyboard_check(ord("A"));
	var key_right = keyboard_check(ord("D"));
	var key_up = keyboard_check(ord("W"));
	var key_down = keyboard_check(ord("S"));

	//Calculatet movement
	var moveX = key_right - key_left; // calculate direction X (-1 / 0 / 1)
	hsp = moveX * walksp; 
	
	var moveY = key_down - key_up; // calculate direction Y (-1 / 0 / 1)
	vsp = moveY * walksp;
	
	CheckCollision(); // check collision to update canMoveX / canMoveY
	
	if(canMoveX)
	{
		x += hsp;
	}
	if(canMoveY)
	{
		y += vsp;
	} 
	
	UpdateKeyQueue();
	
}

playingFootSteps = false;

function UpdateAnimation() 
{
	
	if (ds_list_size(keyQueue) > 0) {
		directionKey = ds_list_find_value(keyQueue, ds_list_size(keyQueue) - 1);
	}
	
	switch (directionKey) {
	    case ord("D"): sprite_index = sPlayer_Walk_Right; break;
	    case ord("A"): sprite_index = sPlayer_Walk_Left; break;
	    case ord("W"): sprite_index = sPlayer_Walk_Back; break;
	    case ord("S"): sprite_index = sPlayer_Walk_Fwd; break;
	}
	
	if(playingFootSteps != true)
	{
		playingFootSteps = true;
		audio_play_sound(sound_Footsteps, 1, 1);
	}
	
	if(vsp == 0 && hsp == 0)
	{
		image_index = 0;
		audio_stop_sound(sound_Footsteps);
		playingFootSteps = false;
	}
	

	
}



function CheckPickUpKey()
{
	var key = instance_find(oKey, 0);
	if(place_meeting(x,y, oKey))
	{
		instance_destroy(key);
		hasKey = true;
		
		var gamemode = instance_find(oGameMode, 0);
		if(!gamemode) return;
		gamemode.playPickupSound();
	}
	
}

function CheckPickUpSun()
{
	var sun = instance_find(oSun, 0);
	if(!instance_exists(sun)) return;
	if(place_meeting(x,y, oSun))
	{
		instance_destroy(oSun);
		hasSun = true;
		
		var gamemode = instance_find(oGameMode, 0);
		if(!gamemode) return;
		gamemode.playPickupSound();
	}
	
}













