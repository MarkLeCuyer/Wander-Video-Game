function PlayerAnimation()

{
	if (!place_meeting(x,y+1,my_tilemap))
	{
		if (jumps == 2)	
		{
			sprite_index = sPlayerA;
			image_xscale = (mouse_x > x) ? 1 : -1;
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
		image_xscale = (mouse_x > x) ? 1 : -1;
		}
		
		if (hsp == 0) 
		{
			sprite_index = sPlayer; 
			image_xscale = (mouse_x > x) ? 1 : -1;
		}
		else 
		{
			sprite_index = sPlayerR; 
			
		}
	}

	if (hsp != 0) 
	{
		image_xscale = (mouse_x > x) ? 1 : -1;
	}

}