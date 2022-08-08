function WeaponData()
{
	weapon[weapons.unarmed] = [ sMissing, 50, 1, 10, 80, 0,  8, false,   0 ];
	weapon[weapons.smg]		= [ sMissing, 10, 1, 30,  0,  20, 3, true,   5 ];
	weapon[weapons.shotgun] = [ sMissing, 20, 3, 20,  0,  20, 2, true,  15 ];
}


function WeaponSpriteData()
{
	spriteData[character.arrow][weapons.unarmed][weaponstate.idle] = [ [sArrowr, 1, 1, 0, c_white], [sArrowur, 1, 1, 0, c_white], [sArrowu, 1, 1, 0, c_white], [sArrowul, 1, 1, 0, c_white], [sArrowl, 1, 1, 0, c_white], [sArrowdl, 1, 1, 0, c_white], [sArrowd, 1, 1, 0, c_white], [sArrowdr, 1, 1, 0, c_white] ];

	spriteData[character.arrow][weapons.smg][weaponstate.idle] = [ [sArrowr, 1, 1, 0, c_red], [sArrowur, 1, 1, 0, c_red], [sArrowu, 1, 1, 0, c_red], [sArrowul, 1, 1, 0, c_red], [sArrowl, 1, 1, 0, c_red], [sArrowdl, 1, 1, 0, c_red], [sArrowd, 1, 1, 0, c_red], [sArrowdr, 1, 1, 0, c_red] ];
	
	
	spriteData[character.player][weapons.unarmed][weaponstate.idle] = [ [sPlayerR, 1, 1, 0, c_white], [sPlayerUR, 1, 1, 0, c_white], [sPlayerU, 1, 1, 0, c_white], [sPlayerUR, -1, 1, 0, c_white], [sPlayerR, -1, 1, 0, c_white], [sPlayerDR, -1, 1, 0, c_white], [sPlayerD, 1, 1, 0, c_white], [sPlayerDR, 1, 1, 0, c_white] ];
	spriteData[character.player][weapons.unarmed][weaponstate.primary] = [ [sPlayerR, 1, 1, 0, c_white], [sPlayerUR, 1, 1, 0, c_white], [sPlayerU, 1, 1, 0, c_white], [sPlayerUR, -1, 1, 0, c_white], [sPlayerR, -1, 1, 0, c_white], [sPlayerDR, -1, 1, 0, c_white], [sPlayerD, 1, 1, 0, c_white], [sPlayerDR, 1, 1, 0, c_white] ];
	spriteData[character.player][weapons.smg][weaponstate.idle] = [ [sPlayerR, 1, 1, 0, c_white], [sPlayerUR, 1, 1, 0, c_white], [sPlayerU, 1, 1, 0, c_white], [sPlayerUR, -1, 1, 0, c_white], [sPlayerR, -1, 1, 0, c_white], [sPlayerDR, -1, 1, 0, c_white], [sPlayerD, 1, 1, 0, c_white], [sPlayerDR, 1, 1, 0, c_white] ];
	spriteData[character.player][weapons.smg][weaponstate.primary] = [ [sPlayerR, 1, 1, 0, c_white], [sPlayerUR, 1, 1, 0, c_white], [sPlayerU, 1, 1, 0, c_white], [sPlayerUR, -1, 1, 0, c_white], [sPlayerR, -1, 1, 0, c_white], [sPlayerDR, -1, 1, 0, c_white], [sPlayerD, 1, 1, 0, c_white], [sPlayerDR, 1, 1, 0, c_white] ];
}
