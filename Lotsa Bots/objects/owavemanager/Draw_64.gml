draw_sprite_ext(sWave, waveCurrent, window_get_width() / 2, waveSignY, 1, 1, 0, c_white, 1);
if (room = rWhiteArena)
{
	draw_sprite_ext(sArenaWhite, 0, window_get_width() / 2, arenaSignY, 1, 1, 0, c_white, 1);
}
else
if (room = rBlueArena)
{
	draw_sprite_ext(sArenaBlue, 0, window_get_width() / 2, arenaSignY, 1, 1, 0, c_white, 1);
}
else
if (room = rRedArena)
{
	draw_sprite_ext(sArenaRed, 0, window_get_width() / 2, arenaSignY, 1, 1, 0, c_white, 1);
}