image_speed = 0;
image_index = 0;

#region Directional Sprite Code
for (var i = 0; i < character.size; i++)
{
	for (var j = 0; j < weapons.size; j++)
	{
		for (var k = 0; k < oPlayer.directions; k++)
		{
			spriteData[i][j][k] = [-3, 1, 1, 0, c_white, 1];
		}
	}
}


WeaponSpriteData();


defaultarray = spriteData[0][0][0];

for (var i = 0; i < character.size; i++)
{
	for (var j = 0; j < weapons.size; j++)
	{
		while( array_length(spriteData[i][j]) < oPlayer.directions ) array_push(spriteData[i][j], [-3, 1, 1, 0, c_white, 1]);
		
		for (var k = 0; k < oPlayer.directions; k++)
		{
			while( array_length(spriteData[i][j][k]) < array_length(defaultarray) ) array_push(spriteData[i][j][k], defaultarray[array_length(spriteData[i][j][k])]);
		}
	}
}
#endregion
