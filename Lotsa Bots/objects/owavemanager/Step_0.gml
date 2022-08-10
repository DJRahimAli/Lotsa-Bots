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

if ( waveCurrent != wave.three && enemyAmountCurrent == 0)
{
	cooldownCurrent = 0;
	show_debug_message( "set to next wave and set enemyamount and cooldown" )
}

show_debug_message(enemyAmountCurrent)
