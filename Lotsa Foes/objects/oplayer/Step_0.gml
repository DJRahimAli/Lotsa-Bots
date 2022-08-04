#region Controls
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

keyNoclip = keyboard_check_pressed(ord("V"));
#endregion

#region Movement Code

//Horizontal Movement
hDir = ( keyRight - keyLeft );

if ( hDir == 0 )
{
	if ( hDecelCurrent == -1 )
	{
		hspPlayer = 0;
	}
	else
	{
		//Deceleration
		hspPlayer = approach( hspPlayer, 0, hDecelCurrent );
	}
}
else
{
	if ( hAccelCurrent == -1 )
	{
		hspPlayer = hspMaxCurrent * hDir;
					
		//Clamp Horizontal Speed to Max Horizontal Speed
		hspPlayer = clamp( hspPlayer, -hspMaxCurrent, hspMaxCurrent );
	}
	else
	{
		//Acceleration
		hspPlayer += hAccelCurrent * hDir;
					
		//Clamp Horizontal Speed to Max Horizontal Speed
		hspPlayer = clamp( hspPlayer, -hspMaxCurrent, hspMaxCurrent );
	}
}

hsp = ( hspPlayer );


//Vertical Movement
vDir = ( keyDown - keyUp );

if ( vDir == 0 )
{
	if ( vDecelCurrent == -1 )
	{
		vspPlayer = 0;
	}
	else
	{
		//Deceleration
		vspPlayer = approach( vspPlayer, 0, vDecelCurrent );
	}
}
else
{
	if ( vAccelCurrent == -1 )
	{
		vspPlayer = vspMaxCurrent * vDir;
					
		//Clamp Horizontal Speed to Max Horizontal Speed
		vspPlayer = clamp( vspPlayer, -vspMaxCurrent, vspMaxCurrent );
	}
	else
	{
		//Acceleration
		vspPlayer += vAccelCurrent * vDir;
					
		//Clamp Horizontal Speed to Max Horizontal Speed
		vspPlayer = clamp( vspPlayer, -vspMaxCurrent, vspMaxCurrent );
	}
}

vsp = ( vspPlayer );


//Re apply fractions
hsp += hspFraction;
vsp += vspFraction;

//Store and Remove fractions
//Important: go into collision with whole integers ONLY!
hspFraction = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hspFraction;
vspFraction = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vspFraction;


if ( keyNoclip ) noclip = !noclip;

if ( !noclip )
{
	////Horizontal Collision
	//if ( place_meeting( round( x ) + ceil_signed( hsp ), round( y ), oParSolid ) )
	//{
	//	while( !place_meeting( x + sign( hsp ), y, oParSolid) ) x += sign( hsp );
	//	hspPlayer = 0;
	//	hspVelocity = 0;
	//	hspMove = 0;
	//	hsp = 0;
	//}
	//x += hsp;

	////Vertical Collision
	////vsp = min( vsp + grvCurrent, vspMax );
	//if ( place_meeting( round( x ), round( y ) + ceil_signed( vsp ), oParSolid ) )
	//{
	//	while( !place_meeting(x, y + sign( vsp ), oParSolid ) ) y += sign( vsp );
	//	vspPlayer = 0;
	//	vspVelocity = 0;
	//	vspMove = 0;
	//	vsp = 0;
	//}
	//y += vsp;
}
else
{
	x += hsp;
	y += vsp;
}
#endregion

#region Directional Sprite Code
var mDir = point_direction( x, y, mouse_x, mouse_y );
var Diff = angle_difference( mDir, direction );
direction += Diff * 0.2;

angle = ( round(direction / angleInterval) ) mod directions;


//angle = ( round(point_direction(0,0,hDir,vDir) / angleInterval) ) mod directions;


if ( spriteData[characterCurrent][weaponCurrent][weaponStateCurrent][angle][sprite.index] != -2 ) anglePrevious = angle; else angle = anglePrevious;


//angle = round( round(direction / angleInterval) * angleInterval ) mod 360;

//image_angle = angle;


//show_debug_message(angle);
#endregion
