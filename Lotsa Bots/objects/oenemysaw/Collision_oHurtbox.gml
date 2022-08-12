hpCurrent = max( 0, hpCurrent-other.damage );

instance_destroy(other);
if ( hpCurrent == 0 ) instance_destroy();
