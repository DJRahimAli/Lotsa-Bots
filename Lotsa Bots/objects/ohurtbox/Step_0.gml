if ( bullet )
{
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
}
else
{
	x = oPlayer.x;
	y = oPlayer.y;
	
	x += lengthdir_x(length, round(oPlayer.direction));
	y += lengthdir_y(length, round(oPlayer.direction));
}

round_position();


depth = oPlayer.depth + sign(oPlayer.y+8 - y);


timer = max( 0, timer-1 );

if ( timer <= 0 
|| place_meeting(x, y, oCollision)
) instance_destroy();
