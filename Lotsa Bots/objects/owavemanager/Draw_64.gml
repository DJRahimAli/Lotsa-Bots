if ( showWaveSignTimer > 0 )
{
	showWaveSignY = lerp(showWaveSignY, 70, 0.1);
	showWaveSignTimer -= 1;
}
else
{
	showWaveSignY = lerp(showWaveSignY, -70, 0.1);
}
if ( waveCurrent = wave.one )
{
	draw_sprite_ext(sWave, 0, window_get_width() / 2, showWaveSignY, 1, 1, 0, c_white, 1);
}
else
if ( waveCurrent = wave.two )
{
	draw_sprite_ext(sWave, 1, window_get_width() / 2, showWaveSignY, 1, 1, 0, c_white, 1);
}
else
if ( waveCurrent = wave.three )
{
	draw_sprite_ext(sWave, 2, window_get_width() / 2, showWaveSignY, 1, 1, 0, c_white, 1);
}