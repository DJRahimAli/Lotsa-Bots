#region Movement Code
hsp = 0;
hspPlayer = 0;
hspFraction = 0;


hDir = 0;

hDirMinGround = 0.5;
//hDirMinAir = 1;
hDirMinCurrent = 0;

hspMaxGround = 5;
//hspMaxAir = 5;
//hspMaxFly = 5;
hspMaxCurrent = 0;


hAccelGround = 0.8;
//hAccelAir = 0.4;
//hAccelFly = -1;
hAccelCurrent = 0;


hDecelGround = 0.4;
//hDecelAir = 0;
//hDecelFly = -1;
hDecelCurrent = 0;


vsp = 0;
vspPlayer = 0;
vspFraction = 0;


vDir = 0;

vDirMinGround = 0.5;
vDirMinCurrent = 0;

vspMaxGround = 5;
vspMaxCurrent = 0;


vAccelGround = 0.8;
vAccelCurrent = 0;


vDecelGround = 0.4;
vDecelCurrent = 0;

noclip = false;
#endregion


#region Directional Sprite Code
directions = 8;

angle = 0;
anglePrevious = 0;
angleInterval = ( 360 / directions );

//angleInterval = 45;
//directions = ( 360 / angleInterval );
//directions = 8;

weaponCurrent = weapon.unarmed;
weaponState = weaponstate.idle;


for (var i = 0; i < weapon.size; i++)
{
	for (var j = 0; j < weaponstate.size; j++)
	{
		for (var k = 0; k < directions; k++)
		{
			spriteData[i][j][k] = [-3, 1, 1, 0, c_white, 1];
		}
	}
}


WeaponSpriteData();


defaultarray = spriteData[0][0][0];

for (var i = 0; i < weapon.size; i++)
{
	for (var j = 0; j < weaponstate.size; j++)
	{
		while( array_length(spriteData[i][j]) < directions ) array_push(spriteData[i][j], [-3, 1, 1, 0, c_white, 1]);
		
		for (var k = 0; k < directions; k++)
		{
			while( array_length(spriteData[i][j][k]) < array_length(defaultarray) ) array_push(spriteData[i][j][k], defaultarray[array_length(spriteData[i][j][k])]);
		}
	}
}
#endregion
