#region Controls
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

if ( !global.mobileControls ) keyPrimary = mouse_check_button(mb_left);

keyNoclip = keyboard_check_pressed(ord("V"));
#endregion

#region Movement Code

//Horizontal Movement
if ( !global.mobileControls )
{
	var leftInput = abs( keyLeft );
	var rightInput = abs( keyRight );
	
	if ( leftInput <= deadzone ) leftInput = 0;
	if ( rightInput <= deadzone ) rightInput = 0;
	
	hDir = ( (rightInput*sign(keyRight)) - (leftInput*sign(keyLeft)) );
}
else
{
	var Input = abs( oJoystickLeft.joy_x / oJoystickLeft.radius );
	if ( Input <= deadzone ) Input = 0;
	
	hDir = Input * sign( oJoystickLeft.joy_x / oJoystickLeft.radius );
	show_debug_message(hDir);
}



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
if ( !global.mobileControls )
{
	var upInput = abs( keyUp );
	var downInput = abs( keyDown );
	
	if ( upInput <= deadzone ) upInput = 0;
	if ( downInput <= deadzone ) downInput = 0;
	
	vDir = ( (downInput*sign(keyDown)) - (upInput*sign(keyUp)) );
}
else
{
	var Input = abs( oJoystickLeft.joy_y / oJoystickLeft.radius );
	if ( Input <= deadzone ) Input = 0;
	
	vDir = Input * sign( oJoystickLeft.joy_y / oJoystickLeft.radius );
	show_debug_message(vDir);
}

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
	//Horizontal Collision
	if ( tile_meeting( round( x ) + ceil_signed( hsp ), round( y ), "Collision" ) )
	{
		while( !tile_meeting( x + sign( hsp ), y, "Collision") ) x += sign( hsp );
		hspPlayer = 0;
		hsp = 0;
	}
	if ( tile_meeting( round( x ) + ceil_signed( hsp ), round( y ), "CollisionSmall" ) )
	{
		while( !tile_meeting( x + sign( hsp ), y, "CollisionSmall") ) x += sign( hsp );
		hspPlayer = 0;
		hsp = 0;
	}
	x += hsp;
	
	//Vertical Collision
	if ( tile_meeting( round( x ), round( y ) + ceil_signed( vsp ), "Collision" ) )
	{
		while( !tile_meeting(x, y + sign( vsp ), "Collision" ) ) y += sign( vsp );
		vspPlayer = 0;
		vsp = 0;
	}
	if ( tile_meeting( round( x ), round( y ) + ceil_signed( vsp ), "CollisionSmall" ) )
	{
		while( !tile_meeting(x, y + sign( vsp ), "CollisionSmall" ) ) y += sign( vsp );
		vspPlayer = 0;
		vsp = 0;
	}
	y += vsp;
}
else
{
	x += hsp;
	y += vsp;
}
#endregion

#region Weapon State
switch (weaponStateCurrent)
{
	case weaponstate.idle:
	{
		
		cooldown = weapon[weaponCurrent][weaponvars.cooldown];
		
		if ( keyPrimary || oJoystickRight.touch_id != -1)
		{
			mDir = point_direction( 0, 0, oJoystickRight.joy_x, oJoystickRight.joy_y );
			if ( !global.mobileControls ) mDir = point_direction( x, y, mouse_x, mouse_y );
			var Diff = angle_difference( mDir, direction );
			
			if ( !firstShot ) direction += Diff * angleAimDelay; else direction = mDir;
			
			firstShot = false;
			
			if ( cooldown != 0 )
			{
				repeat(weapon[weaponCurrent][weaponvars.amount])
				{
					with ( instance_create_layer( x, y, "Instances", oHurtbox ) ) 
					{
						sprite_index = other.weapon[other.weaponCurrent][weaponvars.sprite];
						timer  = other.weapon[other.weaponCurrent][weaponvars.timer];
						length = other.weapon[other.weaponCurrent][weaponvars.length];
						spd	   = other.weapon[other.weaponCurrent][weaponvars.spd];
						damage = other.weapon[other.weaponCurrent][weaponvars.damage];
						bullet = other.weapon[other.weaponCurrent][weaponvars.bullet];
						dir = round(other.direction);
					}
				}
			}
		}
		else
		{
			firstShot = true;
			
			if ( hsp != 0 || vsp != 0 )
			{
				pDir = point_direction(0, 0, sign(hsp), sign(vsp) );
				Diff = angle_difference( pDir, direction );
				direction += Diff * anglePlayerDelay;
			}
		}
		
		weaponStateCurrent = weaponstate.primary;
	} break;
	
	case weaponstate.primary:
	{
		cooldown = max( 0, cooldown-1 );
		
		if ( cooldown <= 0 ) weaponStateCurrent = weaponstate.idle;
	}
	
	case weaponstate.pump:
	{
		
	}
}
#endregion

angle = ( round(direction / angleInterval) ) mod directions;

if ( spriteData[characterCurrent][weaponCurrent][weaponStateCurrent][angle][sprite.index] != -2 ) anglePrevious = angle; else angle = anglePrevious;
