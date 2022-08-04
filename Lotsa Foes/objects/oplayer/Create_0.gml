#region Movement Code
hsp = 0;
hspPlayer = 0;
hspFraction = 0;


hDir = 0;


hspMaxGround = 2;
//hspMaxAir = 5;
//hspMaxFly = 5;
hspMaxCurrent = hspMaxGround; //0;


hAccelGround = -1;
//hAccelAir = 0.4;
//hAccelFly = -1;
hAccelCurrent = hAccelGround; //0;


hDecelGround = 0.2;
//hDecelAir = 0;
//hDecelFly = -1;
hDecelCurrent = hDecelGround; //0;


vsp = 0;
vspPlayer = 0;
vspFraction = 0;


vDir = 0;


vspMaxGround = 2;
vspMaxCurrent = vspMaxGround; //0;


vAccelGround = -1;
vAccelCurrent = vAccelGround; //0;


vDecelGround = 0.2;
vDecelCurrent = vDecelGround; //0;

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

characterCurrent = character.arrow;
weaponCurrent = weapon.unarmed;
weaponStateCurrent = weaponstate.idle;


for (var i = 0; i < character.size; i++)
{
	for (var j = 0; j < weapon.size; j++)
	{
		for (var k = 0; k < weaponstate.size; k++)
		{
			for (var l = 0; l < directions; l++)
			{
				spriteData[i][j][k][l] = [-3, 1, 1, 0, c_white, 1];
			}
		}
	}
}


WeaponSpriteData();


defaultarray = spriteData[0][0][0][0];

for (var i = 0; i < character.size; i++)
{
	for (var j = 0; j < weapon.size; j++)
	{
		for (var k = 0; k < weaponstate.size; k++)
		{
			while( array_length(spriteData[i][j][k]) < directions ) array_push(spriteData[i][j][k], [-3, 1, 1, 0, c_white, 1]);
		
			for (var l = 0; l < directions; l++)
			{
				while( array_length(spriteData[i][j][k][l]) < array_length(defaultarray) ) array_push(spriteData[i][j][k][l], defaultarray[array_length(spriteData[i][j][k][l])]);
			}
		}
	}
}
#endregion
