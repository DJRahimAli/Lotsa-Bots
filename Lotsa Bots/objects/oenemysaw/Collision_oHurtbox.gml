audio_play_sound(sndEnemyHit, 4, false );
hpCurrent = max( 0, hpCurrent-other.damage );

instance_destroy(other);
if ( hpCurrent == 0 ) instance_destroy();
