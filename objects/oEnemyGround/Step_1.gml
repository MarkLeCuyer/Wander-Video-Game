if (hp <= 0) 
{
	with (instance_create_layer(x,y,layer,oEnemyGroundDead)) 
	{
		direction = other.hitfrom; 
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;  
		if (sign(hsp) != 0) image_xscale = sign (hsp);
	
	}
	
	
	instance_destroy();
}

if (place_meeting(x,y,oPlayer) and oPlayer.invicible = false)
{
	with (instance_create_layer(x,y,layer,oEnemyGroundH)) 
	{
		sprite_index = sEnemygGroundH;
		health -= 1;
		oPlayer.invicible = true;
		oPlayer.alarm[0] = 60;
		oPlayer.image_blend = c_red;oPlayer.image_blend = c_red;
	}
	instance_destroy();
}

