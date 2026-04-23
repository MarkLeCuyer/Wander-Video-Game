function PlayerAnimation()

{
	//Jump & Double Jump
	if (!place_meeting(x,y+1,my_tilemap))
	{
		if (jumps == 2)	
		{
			sprite_index = sPlayerA;
		}
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	}
	
	else
	{
		image_speed = 1;
	
		if (jumps == 0)
		{
			sprite_index = sPlayerDA;
		}	
	}
	
	
	if (place_meeting(x,y+1,my_tileset))
	{
		sprite_index = sPlayer
	
	}
	
	
	
	
	
	
	
	
	
}
