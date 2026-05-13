vsp = vsp + grv;

var _scared_of_heights = !place_meeting(x+hsp + (16 * sign(hsp)),y+1,my_tilemap)

var _in_dist = collision_circle(x, y, 32, oPlayer, false, false)

if _in_dist {chasing = true;}
else {chasing = false;}

if not chasing {
	sprite_index = sEnemygGround;
	
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
}
else {
	// When chasing the player
	if not collision_circle(x, y, 16, oPlayer, false, false) {
		// If the player is not close to me
		
		// Chasing code
		if oPlayer.x > x {
			if (not place_meeting(x+hsp,y,my_tilemap)) {
				// if the player is to the right
				hsp = walksp
				x = x + hsp; 
			}
		}
		else if oPlayer.x < x {
			if (not place_meeting(x+hsp,y,my_tilemap)) {
				// if the player is to the left
				hsp = -walksp
				x = x + hsp; 
			}
		}
	}
	else {
		// If I'm next to the player
		
		// Start hitting
		sprite_index = sEnemygGroundH;
		
		// Did my punch land?
		if (place_meeting(x,y,oPlayer) and oPlayer.invicible == false)
			{
				health -= 1;
				oPlayer.invicible = true;
				oPlayer.alarm[0] = 60;
				oPlayer.image_blend = c_red;
			}
	
	}
}

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
else if place_meeting(x,y+1,my_tilemap) and grounded == false
{
	grounded = true
	image_speed = 1;
	sprite_index = sEnemygGround;
	
}

if (hsp != 0) { 
	image_xscale = sign(hsp);
}

