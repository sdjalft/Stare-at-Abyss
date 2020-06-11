/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

var _x = instance_create_depth(x+sprite_get_width(spr_settingMenu)-48,
			y+16,layer_get_depth("settingMenu")-1,obj_settingX);	//右上角的叉
_x.menuId = self;

//组件大全
units = ds_list_create();
var _resolution = instance_create_depth(x+sprite_get_width(spr_settingMenu)-300,
										y+72,layer_get_depth("settingMenu")-1,
										obj_settingResolution);
ds_list_add(units,_resolution);
for (var _cc = 0; _cc < ds_list_size(units); _cc += 1){
	units[| _cc].menuId = self;
}