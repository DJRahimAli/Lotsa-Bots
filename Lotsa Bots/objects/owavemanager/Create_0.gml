WaveData();

arenaCurrent = arena.white;
waveCurrent = wave.one;

cooldownCurrent = 0;

enemyAmountCurrent = waveData[arenaCurrent][waveCurrent][wavevars.enemyamount];

intermissionCurrent = waveData[arenaCurrent][waveCurrent][wavevars.intermission];

showWaveSignTimer = 60 * 3; /*Show wave sign for 3 seconds at the start of the level*/

showWaveSignY = -64; /*The y position of the wave sign*/