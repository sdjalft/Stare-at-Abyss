/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

if (!global.settingMenuOn){
	instance_create_layer((window_get_width()-sprite_get_width(spr_settingMenu))/2,
							(window_get_height()-sprite_get_height(spr_settingMenu))/2,
							"settingMenu",obj_settingMenu);
	global.settingMenuOn = true;
}