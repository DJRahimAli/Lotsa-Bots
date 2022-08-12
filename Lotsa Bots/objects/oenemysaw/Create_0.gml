hp = 20;
hpCurrent = hp;
hpLast = hpCurrent;

target = oPlayer;


flashAlphaSpawn = 0.8;
flashAlphaHurt = 0.8;
flashAlphaCurrent = flashAlphaSpawn;

flashSubtractSpawn = 0.05;
flashSubtractHurt = 0.1;

flashColorSpawn = c_red;
flashColorHurt = c_white;
flashColorCurrent = flashColorSpawn;


state = 0;
cooldown = 50;
cooldownCurrent = 0;
damage = 5;

#region Movement Code
hsp = 0;
hspFraction = 0;


hDir = 0;


hspMaxGround = 2;
//hspMaxAir = 5;
//hspMaxFly = 5;
hspMaxCurrent = hspMaxGround; //0;


hAccelGround = 0.5;
//hAccelAir = 0.4;
//hAccelFly = -1;
hAccelCurrent = hAccelGround; //0;


hDecelGround = 0.2;
//hDecelAir = 0;
//hDecelFly = -1;
hDecelCurrent = hDecelGround; //0;


vsp = 0;
vspFraction = 0;


vDir = 0;


vspMaxGround = 2;
vspMaxCurrent = vspMaxGround; //0;


vAccelGround = 0.5;
vAccelCurrent = vAccelGround; //0;


vDecelGround = 0.2;
vDecelCurrent = vDecelGround; //0;

noclip = false;
#endregion
