event_inherited();

if ( Chance( 0.7,1 ) )
{
	with (instance_create_layer( x, y, layer, oPickup ) )
	{
		pickupCurrent = choose(pickup.medkitsmall, pickup.medkit, pickup.shotgun);
		image_index = pickupCurrent;
	}
}
