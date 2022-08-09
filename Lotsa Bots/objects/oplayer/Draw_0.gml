var array = spriteData[characterCurrent][weaponCurrent][weaponStateCurrent][angle];

sprite_index = array[sprite.index];

image_xscale = array[sprite.xscale];
image_yscale = array[sprite.yscale];

image_angle = array[sprite.rot];

image_blend = array[sprite.col];

image_alpha = array[sprite.alpha];

mask_index = sPlayerD;

if ( sprite_index <= -3 ) sprite_index = sMissing;

if ( sprite_index != -1 ) draw_self();


if ( flashAlphaCurrent != 0 )
{
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColorCurrent, flashAlphaCurrent);
	
	shader_reset();
}
