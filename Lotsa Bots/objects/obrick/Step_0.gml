if (cooldown > 0)
{
	cooldown -= 1;
}
if (instance_exists(oPlayer))
{
	depth = oPlayer.depth + 1;
}