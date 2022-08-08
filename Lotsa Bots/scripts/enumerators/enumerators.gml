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
		spread,
		size
	}
	
	enum wave
	{
		one,
		two,
		three,
		size
	}
	
	enum wavevars
	{
		enemyamount,
		cooldown,
		size
	}
}

