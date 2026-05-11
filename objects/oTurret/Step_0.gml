
var in_radius = collision_circle(x, y, turret_radius, oPlayer, false, false)

if in_radius {
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
}
else {
	image_angle += 0.5;
}

if (in_radius) and (firingdelay == 0)
{
	firingdelay = 20;
	audio_play_sound(snShooting,5,false);
	with (instance_create_layer(x,y,"Lazer_Enemy",oLazer_Enemy))
		{
		
			x = oTurret.x; 
			y = oTurret.y;
			speed = 10;
			direction = other.image_angle;
			image_angle = direction;
		}
}

if firingdelay > 0 {
	firingdelay -= 1;
}