function EnumInit()
{
	enum weapon
	{
		none,
		unarmed,
		pistol,
		shotgun,
		smg,
		size
	}
	
	enum weaponstate
	{
		idle,
		primary,
		secondary,
		startup,
		pump,
		reload,
		empty,
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
}

