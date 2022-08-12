function WeaponData()
{
	weapon[weapons.none] =	  [ 0,  0, 0,  0,   0,  0,  true,  0, 0,  sMissing, sMissing, 1, 1, 0, c_white, 1 ];
	weapon[weapons.unarmed] = [ 30, 1, 10, 132, 0,  12, false, 0, 0,  sMissing, sMissing, 1, 1, 0, c_white, 1 ];
	weapon[weapons.smg]		= [ 5,  1, 30, 0,   20, 5,  true,  0, 5,  sBullet,  sBullet,  1, 1, 0, c_white, 1 ];
	weapon[weapons.shotgun] = [ 40, 3, 20, 0,   20, 8,  true,  2, 15, sBullet,  sBullet,  1, 1, 0, c_white, 1 ];
}

function PlayerSpriteData()
{
	spriteData[character.arrow][playerstate.idle]  = [ [sArrowr, sArrowd, 1, 1, 0, c_white],  [sArrowur, sArrowd, 1, 1, 0, c_white],  [sArrowu, sArrowd, 1, 1, 0, c_white],  [sArrowul, sArrowd, 1, 1, 0, c_white],   [sArrowl, sArrowd, 1, 1, 0, c_white],   [sArrowdl, sArrowd, 1, 1, 0, c_white],   [sArrowd, sArrowd, 1, 1, 0, c_white],  [sArrowdr, sArrowd, 1, 1, 0, c_white]  ];

	spriteData[character.arrow][playerstate.idle]  = [ [sArrowr, sArrowd, 1, 1, 0, c_red],  [sArrowur, sArrowd, 1, 1, 0, c_red],  [sArrowu, sArrowd, 1, 1, 0, c_red],  [sArrowul, sArrowd, 1, 1, 0, c_red],   [sArrowl, sArrowd, 1, 1, 0, c_red],   [sArrowdl, sArrowd, 1, 1, 0, c_red],   [sArrowd, sArrowd, 1, 1, 0, c_red],  [sArrowdr, sArrowd, 1, 1, 0, c_red]  ];
	
	
	spriteData[character.player][playerstate.idle] = [ [sPlayerR, sPlayerD], [sPlayerUR, sPlayerD], [sPlayerU, sPlayerD], [sPlayerUR, sPlayerD, -1], [sPlayerR, sPlayerD, -1], [sPlayerDR, sPlayerD, -1], [sPlayerD, -2], [sPlayerDR, sPlayerD] ];
}

function WeaponSpriteData()
{
	spriteData[character.player][weapons.unarmed] = [ [sWeaponPlayerBatR], [sWeaponPlayerBatUR], [sWeaponPlayerBatU], [sWeaponPlayerBatUR, -1], [sWeaponPlayerBatR, -1], [sWeaponPlayerBatDR, -1], [sWeaponPlayerBatD], [sWeaponPlayerBatDR] ];
	
	spriteData[character.player][weapons.smg]     = [ [sWeaponPlayerSMGR], [sWeaponPlayerSMGUR], [sWeaponPlayerSMGU], [sWeaponPlayerSMGUR, -1], [sWeaponPlayerSMGR, -1], [sWeaponPlayerSMGDR, -1], [sWeaponPlayerSMGD], [sWeaponPlayerSMGDR] ];
	
	spriteData[character.player][weapons.shotgun] = [ [sPlayerR, 1, 1], [sPlayerUR, 1, 1], [sPlayerU, 1, 1], [sPlayerUR, -1, 1], [sPlayerR, -1, 1], [sPlayerDR, -1, 1], [sPlayerD, 1, 1], [sPlayerDR, 1, 1] ];
}

function WaveData()
{
	waveData[arena.white][wave.one]   = [ 240, 5, 300  ];
	waveData[arena.white][wave.two]   = [ 180, 10, 300 ];
	waveData[arena.white][wave.three] = [ 120, 20, 300 ];
	
	waveEnemies[arena.white][wave.one]   = [ oEnemySaw ];
	waveEnemies[arena.white][wave.two]   = [ oEnemySaw ];
	waveEnemies[arena.white][wave.three] = [ oEnemySaw ];
	
	
	waveData[arena.blue][wave.one]   = [ 240, 5, 300  ];
	waveData[arena.blue][wave.two]   = [ 180, 10, 300 ];
	waveData[arena.blue][wave.three] = [ 120, 20, 300 ];
	
	waveEnemies[arena.blue][wave.one]   = [ oEnemySaw ];
	waveEnemies[arena.blue][wave.two]   = [ oEnemySaw ];
	waveEnemies[arena.blue][wave.three] = [ oEnemySaw ];
	
	
	waveData[arena.red][wave.one]   = [ 240, 5, 300  ];
	waveData[arena.red][wave.two]   = [ 180, 10, 300 ];
	waveData[arena.red][wave.three] = [ 120, 20, 300 ];
	
	waveEnemies[arena.red][wave.one]   = [ oEnemySaw ];
	waveEnemies[arena.red][wave.two]   = [ oEnemySaw ];
	waveEnemies[arena.red][wave.three] = [ oEnemySaw ];
}
