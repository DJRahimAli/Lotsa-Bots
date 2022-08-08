hp = max( 0, hp-other.damage );

instance_destroy(other);
if ( hp == 0 ) instance_destroy();
