function EnumInit()
{
	enum character
	{
		none,
		player,
		arrow,
		size
	}
	
	enum weapons
	{
		none,
		unarmed,
		smg,
		shotgun,
		size
	}
	
	enum weaponstate
	{
		idle,
		primary,
		pump,
		size
	}
	
	enum weaponfiremode
	{
		single,
		automatic,
		burstsingle,
		burstautomatic,
		pumpsingle,
		pumpautomatic,
		size
	}
	
	enum sprite
	{
		index,
		xscale,
		yscale,
		rot,
		col,
		alpha,
		size
	}
	
	enum weaponvars
	{
		sprite,
		cooldown,
		amount,
		timer,
		length,
		spd,
		damage,
		bullet,
		pump,
		spread,
		size
	}
}

