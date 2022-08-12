image_angle -= 10;
timer += 1;

if (timer > 20)
{
	image_alpha -= 1;
}

if (image_alpha <= 0)
{
	instance_destroy();
}