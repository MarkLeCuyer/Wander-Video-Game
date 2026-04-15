function PlayerAnimation()

{
	if (!place_meeting(x,y+1,my_tilemap))
	{
		sprite_index = sPlayerA;
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
	}
	else
	{
		image_speed = 1;
	
		if (jumps = 0)
	{
		sprite_index = sPlayerDA;
	}
		if (hsp == 0) 
		{
			sprite_index = sPlayer; 
			with(instance_nearest(x, y, oBlaster)){
				sprite_index = sBlaster
			}
		}
		else 
		{
			sprite_index = sPlayerR; 
			with(instance_nearest(x, y, oBlaster)){
				sprite_index = sBlaster
			}
		}
	}

	if (hsp != 0) {
		image_xscale = sign(hsp);
		with(instance_nearest(x, y, oBlaster)){
			image_xscale = sign(hsp);
		}
}



















}