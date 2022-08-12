if ( room != rTitle )
{
	if ( global.mobileControls && (instance_exists( oAnalogueLeft ) || instance_exists( oAnalogueRight )) )
	{
		oAnalogueLeft.x += oCamera.x;
		oAnalogueLeft.y += oCamera.y;
		
		oAnalogueRight.x += oCamera.x;
		oAnalogueRight.y += oCamera.y;
		
		layer_sequence_x(oPlayer.sequenceControls2, oCamera.x);
		layer_sequence_y(oPlayer.sequenceControls2, oCamera.y);
	}
}