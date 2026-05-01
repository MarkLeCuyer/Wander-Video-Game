
//Player input
getControls();

//Calculate Movement
var move = key_right - key_left;

hsp = move * walkspeed;

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
	while (!place_meeting(x,y+sign(vsp),my_tilemap))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

// Animation
PlayerAnimation();



















