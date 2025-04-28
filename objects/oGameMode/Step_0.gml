/// @description Insert description here
// You can write your code in this editor

if(eclipseBegin)
{
	global.eclipseCount-=2;
	shakeMagn += 0.035;
}

if(eclipseBegin && global.eclipseCount < -250)
{
	audio_stop_all();
	playFinishLevelSound();
	room_goto(rmHospital);
	eclipseBegin = false;
	global.eclipseCount = 255;
	shakeMagn = 0;

}



