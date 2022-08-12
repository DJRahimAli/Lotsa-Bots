if (pause)
{
	if (!layer_sequence_exists("Assets", sequence)) sequence = layer_sequence_create( "Assets", oCamera.x, oCamera.y, sqPause );
	instance_deactivate_all(true);
	instance_activate_object(oFullscreen);
	instance_activate_object(oBack);
	instance_activate_object(oQuit);
}
else
{
	if (layer_sequence_exists("Assets", sequence)) layer_sequence_destroy(sequence);
	instance_activate_all();
}
