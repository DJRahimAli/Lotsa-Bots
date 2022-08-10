hp = 100;
hpLast = hp;

flashAlphaSpawn = 0.8;
flashAlphaHurt = 0.8;
flashAlphaCurrent = flashAlphaSpawn;

flashSubtractSpawn = 0.05;
flashSubtractHurt = 0.1;

flashColorSpawn = c_blue;
flashColorHurt = c_white;
flashColorCurrent = flashColorSpawn;

#region Controls
keyLeft = false;
keyRight = false;

keyUp = false;
keyDown = false;

keyPrimary = false;

keyNoclip = false;

deadzone = 0.2;
#endregion

#region Movement Code
hsp = 0;
hspPlayer = 0;
hspFraction = 0;


hDir = 0;


hspMaxCurrent = 4;

hAccelCurrent = 0.5;

hDecelCurrent = 0.2;


vsp = 0;
vspPlayer = 0;
vspFraction = 0;


vDir = 0;


vspMaxCurrent = 4;

vAccelCurrent = 0.5;

vDecelCurrent = 0.2;

noclip = false;
#endregion


#region Weapon
cooldown = 0;
firstShot = false;
WeaponData();
weaponCurrent = weapons.unarmed;
#endregion


#region Directional Sprite Code
direction = 270;
pDir = 0;
mDir = 0;

directions = 8;

angle = 0;
anglePlayerDelay = 0.2;
angleAimDelay = 0.2;
anglePrevious = 0;
angleInterval = ( 360 / directions );

//angleInterval = 45;
//directions = ( 360 / angleInterval );
//directions = 8;

characterCurrent = character.player;
playerStateCurrent = playerstate.idle;
weaponStateCurrent = weaponstate.idle;


for (var i = 0; i < character.size; i++)
{
	for (var j = 0; j < directions; j++)
	{
		spriteData[i][j] = [-3, -3, 1, 1, 0, c_white, 1];
	}
}


PlayerSpriteData();


defaultarray = spriteData[0][0];

for (var i = 0; i < character.size; i++)
{
	while( array_length(spriteData[i]) < directions ) array_push(spriteData[i], [-3, -3, 1, 1, 0, c_white, 1]);
	
	for (var j = 0; j < directions; j++)
	{
		while( array_length(spriteData[i][j]) < array_length(defaultarray) ) array_push(spriteData[i][j], defaultarray[array_length(spriteData[i][j])]);
	}
}
#endregion

instance_create_depth( 0, 0, depth-1, oWeapon );
