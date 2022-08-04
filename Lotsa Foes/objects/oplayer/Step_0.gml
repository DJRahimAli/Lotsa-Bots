#region Movement Code
hsp = ( hspPlayer );

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
#endregion

#endregion Directional Sprite Code
var mDir = point_direction( x, y, mouse_x, mouse_y );
var Diff = angle_difference( mDir, direction );
direction += Diff * 0.2;

angle = ( round(direction / angleInterval) ) mod directions;

if ( spriteData[weaponCurrent][weaponState][angle][sprite.index] != -2 ) anglePrevious = angle; else angle = anglePrevious;

//angle = round( round(direction / angleInterval) * angleInterval ) mod 360;

//image_angle = angle;

//show_debug_message(angle);
#endregion
