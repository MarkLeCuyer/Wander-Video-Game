if (place_meeting(x,y,oPlayer) and oPlayer.invicible = false)
{
	health -= 1;
	oPlayer.invicible = true;
	oPlayer.alarm[0] = 60;
	oPlayer.image_blend = c_red;oPlayer.image_blend = c_red;
	
}