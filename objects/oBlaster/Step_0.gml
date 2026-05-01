x = oPlayer.x-24; 
y = oPlayer.y-10;

direction = point_direction(x, y, mouse_x, mouse_y);

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




