x = oPlayer.x-6; 
y = oPlayer.y-3;

// Blaster flips when the player flips
if (mouse_x < oPlayer.x) 
{
    image_yscale = -1; // Mouse is to the left, flip sprite
	x = oPlayer.x+6; 
	
} else 
{
    image_yscale = 1;  // Mouse is to the right, default orientation
}


		
	

