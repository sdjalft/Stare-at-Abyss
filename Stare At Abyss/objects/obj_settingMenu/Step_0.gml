/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

x = global.windowWidth / 8;
y = global.windowHeight / 8;
cha.x = x+sprite_get_width(spr_settingMenu)-48;
cha.y = y+16;
for (var _cc = 0; _cc < ds_list_size(units); _cc += 1){
	units[| _cc].x = x+sprite_get_width(spr_settingMenu)-300;
	units[| _cc].y = y+72;
}