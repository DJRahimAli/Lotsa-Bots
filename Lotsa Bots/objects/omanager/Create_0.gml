if (os_browser != browser_not_a_browser) instance_create_depth(x,y,depth,obj_HTML_FS);

global.mobileControls = false;

if ( os_type == os_android || os_type == os_ios ) global.mobileControls = true;
