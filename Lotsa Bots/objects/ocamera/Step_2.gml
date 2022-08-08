if ( global.mobileControls && (instance_exists( oAnalogueLeft ) || instance_exists( oAnalogueRight )) )
{
	oAnalogueLeft.x += oCamera.x;
	oAnalogueLeft.y += oCamera.y;
	
	oAnalogueRight.x += oCamera.x;
	oAnalogueRight.y += oCamera.y;
}
