switch (other.pickupCurrent)
{
	case pickup.medkit:
	{
		hpCurrent = min( hp, hpCurrent+other.hp );
		instance_destroy(other);
	} break;
	
	case pickup.medkitsmall:
	{
		hpCurrent = min( hp, hpCurrent+other.hpSmall );
		instance_destroy(other);
	} break;
	
	
	case pickup.unarmed:
	{
		weaponCurrent = weapons.unarmed;
		instance_destroy(other);
	} break;
	
	case pickup.smg:
	{
		weaponCurrent = weapons.smg;
		instance_destroy(other);
	} break;
	
	case pickup.shotgun:
	{
		weaponCurrent = weapons.shotgun;
		instance_destroy(other);
	} break;
}
