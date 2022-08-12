if (cooldown = 0)
{
	hp -= 1;
	cooldown = 10;
	
	#region /*Shoot out brick particles when hit*/
	
	#region /*Theese particles always shoots out the same directions*/
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(45, random_range(5, 10));
	}
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(135, random_range(5, 10));
	}
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(225, random_range(5, 10));
	}
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(315, random_range(5, 10));
	}
	#endregion /*Theese particles always shoots out the same directions END*/
	
	#region /*Theese particles always shoots out in random directions*/
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(random(360), random_range(5, 10));
	}
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(random(360), random_range(5, 10));
	}
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(random(360), random_range(5, 10));
	}
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(random(360), random_range(5, 10));
	}
	with(instance_create_depth(x + 16, y + 16, 0, oBrickParticle))
	{
		motion_set(random(360), random_range(5, 10));
	}
	#endregion /*Theese particles always shoots out in random directions END*/
	
	#endregion /*Shoot out brick particles when hit END*/
	
	#region /*What happens at each hp*/
	if (hp = 4)
	{
		audio_play_sound(sndBulletHitWall, 0, false);
		sprite_index = sBrickBreak;
		image_index = 0;
		image_speed = 0;
	}
	else
	if (hp = 3)
	{
		audio_play_sound(sndBulletHitWall, 0, false);
		sprite_index = sBrickBreak;
		image_index = 1;
		image_speed = 0;
	}
	else
	if (hp = 2)
	{
		audio_play_sound(sndBulletHitWall, 0, false);
		sprite_index = sBrickBreak;
		image_index = 2;
		image_speed = 0;
	}
	else
	if (hp = 1)
	{
		audio_play_sound(sndBulletHitWall, 0, false);
		sprite_index = sBrickBreak;
		image_index = 3;
		image_speed = 0;
	}
	else
	if (hp = 0)
	{
		audio_play_sound(sndWallBreak, 0, false);
		instance_destroy();
	}
	#endregion /*What happens at each hp END*/
	
}