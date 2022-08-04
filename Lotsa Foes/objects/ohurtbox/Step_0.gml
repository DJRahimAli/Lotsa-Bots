timer = max( 0, timer-- );

if ( timer <= 0 ) instance_destroy();


if ( bullet )
{
	x += lengthdir_x(spd,other.direction);
	y += lengthdir_y(spd,other.direction);
}
else
{
	x = other.x;
	y = other.y;
	
	x += lengthdir_x(length,other.direction);
	y += lengthdir_y(length,other.direction);
}
