/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//实时同步大小
image_xscale = global.currentZoom;
image_yscale = global.currentZoom;

if (keyboard_check_pressed(vk_escape) && global.paused){
	instance_activate_all();
	global.paused = false;
	instance_destroy();
}