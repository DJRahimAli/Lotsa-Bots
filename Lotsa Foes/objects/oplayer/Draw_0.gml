var array = spriteData[weaponCurrent][weaponState][angle];

sprite_index = array[sprite.index];

image_xscale = array[sprite.xscale];
image_yscale = array[sprite.yscale];

image_angle = array[sprite.rot];

image_blend = array[sprite.col];

image_alpha = array[sprite.alpha];

if ( sprite_index <= -3 ) sprite_index = sMissing;

if ( sprite_index != -1 ) draw_self();


//draw_line(x, y, x + lengthdir_x(50,angle), y + lengthdir_y(50,angle));


//image_xscale = spriteData[weaponCurrent][weaponState][angle][xscale];
//image_yscale = spriteData[weaponCurrent][weaponState][angle][yscale];
