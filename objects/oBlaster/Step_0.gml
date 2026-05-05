x = oPlayer.x-6; 
y = oPlayer.y-2;

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (mouse_x < x) {
    image_yscale = -1; // Mouse is to the left, flip sprite
} else {
    image_yscale = 1;  // Mouse is to the right, default orientation
}

firingdelay = firingdelay -1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 20;
	audio_play_sound(snShooting,5,false);
	with (instance_create_layer(x+12,y+15,"Lazer",oLazer))
	{
		speed = 10;
		direction = other.image_xscale + random_range(-3,3);
		image_angle = direction;
		
	}
}




