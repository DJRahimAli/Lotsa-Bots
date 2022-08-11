var spriteid = layer_sprite_create(layer, x, y, sprite_index);
layer_sprite_blend(spriteid,image_blend);

if ( variation != 0 )
{
	spriteid = layer_sprite_create(layer-1, x, y, sWallVariations);
	layer_sprite_index(spriteid, variation);
}

instance_destroy();
