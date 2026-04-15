function getControls()
{
	//Key inputs
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	
	//Jumping 
	if (place_meeting(x,y+1,my_tilemap))
	{
		jumps = jumpsmax; sprite_index = sPlayer
	}
	
	else if not (place_meeting(x,y+1,my_tilemap))
	{
		jumps = 1;
	} 
	
	
	if (key_jump) && (jumps > 0)
	{
		if (jumps == 1)
		{
			sprite_index = sPlayerDA;
		}
		else sprite_index = sPlayerA;
		jumps -= 1;
		vsp = -jumpspeed;
	}
}