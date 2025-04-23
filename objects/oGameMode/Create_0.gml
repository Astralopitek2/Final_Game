/// @description Insert description here
// You can write your code in this editor

triggerRadius = 80;
hellBegin = false;
eclipseBegin = false;
global.eclipseCount = 255;
shakeMagn = 0;


function playDoorBreak()
{
	audio_play_sound(sound_DoorBreak, 1, 0);
	show_debug_message("Door Break Sound");
}

function playPickupSound()
{
	audio_play_sound(sound_Pickup, 1, 0);
}

function playShowMessageSound()
{
	audio_play_sound(sound_ShowMessage, 1, 0);
}
function playFinishLevelSound()
{
	audio_play_sound(sound_FinishLevel, 1, 0);
}

room_width = 10000;
room_height = 10000;

randomize();

function SpawnHelper(playerX, playerY)
{
	if(!hellBegin)
	{
		audio_play_sound(sound_Hell, 1, 0);
		audio_play_sound(sound_Squeaking, 1, 0);
		hellBegin = true;
		shakeMagn = 2;
		instance_create_layer(x-500, y, "Instances", oSun);
		//eclipseBegin = true;
	}
	audio_play_sound(sound_Pickup, 1, 0);
	var spawnX = playerX + random_range(-60, 60);
	var spawnY = playerY + random_range(-60, 60);

	instance_create_layer(spawnX, spawnY, "Instances", oHelperNPC);
}

function startEclipse()
{
	eclipseBegin = true;
}
