vsp = vsp + grv;

var _scared_of_heights = !place_meeting(x+hsp + (16 * sign(hsp)),y+1,my_tilemap)

//Don't walk off edges 
if (grounded) && (_scared_of_heights)
{
	hsp = -hsp;
}

// Horizontal collision
if (place_meeting(x+hsp,y,my_tilemap))
{
	while (!place_meeting(x+sign(hsp),y,my_tilemap))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp; 

// Vertical collision
if (place_meeting(x,y+vsp,my_tilemap))
{
	while (!place_meeting(x,y+sign(vsp),my_tilemap))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

// Animation
if (!place_meeting(x,y+1,my_tilemap))
{
	grounded = false;
	sprite_index = sEnemygA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = sEnemygR; 
	}
	else 
	{
		sprite_index = sEnemygR; 
	}
}

if (hsp != 0) image_xscale = sign(hsp);


















