WaveData();

arenaCurrent = arena.white;
waveCurrent = wave.one;

cooldownCurrent = 0;

enemyAmountCurrent = waveData[arenaCurrent][waveCurrent][wavevars.enemyamount];

intermissionCurrent = waveData[arenaCurrent][waveCurrent][wavevars.intermission];

waveSignCooldown = 60 * 3;
waveSignCooldownCurrent = waveSignCooldown;

waveSignY = -64;
arenaSignY = window_get_height() + 70;
