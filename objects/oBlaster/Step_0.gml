
// 
if oPlayer.sprite_index == sPlayer and oPlayer.image_index = 1 {
	y = oPlayer.y-1;
}

// Blaster follows the mouse
image_angle = point_direction(x, y+6, mouse_x, mouse_y);

firingdelay = firingdelay -1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 20;
	audio_play_sound(snShooting,5,false);
	with (instance_create_layer(x,y,"Lazer",oLazer))
		{
			x = oBlaster.x; 
			y = oBlaster.y;
			speed = 10;
			direction = other.image_angle;
			image_angle = direction;
			}
}