if (done == 0)
{
	vsp = vsp + grv;

	// Horizontal collision
	if (place_meeting(x+hsp,y,my_tilemap))
	{
		while (!place_meeting(x+sign(hsp),y,my_tilemap))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp; 

	// Vertical collision
	if (place_meeting(x,y+vsp,my_tilemap))
	{
		if (vsp > 0) 
		{
			done = 1;
			image_index = 1; 
		}
		while (!place_meeting(x,y+sign(vsp),my_tilemap))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp; 
}