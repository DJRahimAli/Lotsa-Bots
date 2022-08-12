if ( room == rTitle )
{
	audio_stop_sound(musWave1);
	audio_stop_sound(musWave2);
	audio_stop_sound(musWave3);
}
else
{
	if (!audio_is_playing(musWave1))
	{
		vol1 = 1;
		mus1 = audio_play_sound(musWave1, 6, true);
		audio_sound_gain(mus1, vol1, 0);
	}
	if (!audio_is_playing(musWave2))
	{
		vol2 = 0;
		mus2 = audio_play_sound(musWave2, 6, true);
		audio_sound_gain(mus2, vol2, 0);
	}
	if (!audio_is_playing(musWave3))
	{
		vol3 = 0;
		mus3 = audio_play_sound(musWave3, 6, true);
		audio_sound_gain(mus3, vol3, 0);
	}
}
