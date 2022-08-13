var enemyArray = waveEnemies[arenaCurrent][waveCurrent];

if ( cooldownCurrent != 0 )
{
	cooldownCurrent = max( 0, cooldownCurrent-1 );
}
else
{
	if ( instance_number(oParEnemy) != enemyAmountCurrent )
	{
		with( instance_find(oSpawnerWave, irandom_range( 0, instance_number(oSpawnerWave)) ) )
		{
			instance_create_layer( x, y, "Layer2", enemyArray[irandom_range(0, array_length(enemyArray)-1)] )
		}
	}
	cooldownCurrent = waveData[arenaCurrent][waveCurrent][wavevars.cooldown];
}

if ( enemyAmountCurrent == 0 )
{
	intermissionCurrent = max( 0, intermissionCurrent-1 );
	
	if ( intermissionCurrent == 0 )
	{
		if ( waveCurrent != wave.three )
		{
			waveCurrent++;
			waveSignCooldownCurrent = waveSignCooldown;
			enemyAmountCurrent = waveData[arenaCurrent][waveCurrent][wavevars.enemyamount];
			cooldownCurrent = 0;
			intermissionCurrent = waveData[arenaCurrent][waveCurrent][wavevars.intermission];
			//show_debug_message( "set to next wave and set enemyamount and cooldown" );
		}
		else
		if (room_next(room)<>-1)
		{
			room_goto_next();
		}
	}
	else
	{
		if ( waveCurrent != wave.three )
		{
			//show_debug_message( "show next wave number on screen" );
		}
		else
		{
			oPlayer.playerStateCurrent = playerstate.win;
			image_speed = 1;
			//show_debug_message( "set player to win playerstate" );
		}
	}
}


if ( waveSignCooldownCurrent == 0 )
{
	waveSignY = lerp(waveSignY, -70, 0.1);
	arenaSignY = lerp(arenaSignY, window_get_height() + 70, 0.1);
}
else
{
	waveSignY = lerp(waveSignY, 70, 0.1);
	if (waveCurrent = 0)
	{
		arenaSignY = lerp(arenaSignY, window_get_height() - 70, 0.1);
	}
	waveSignCooldownCurrent--;
}