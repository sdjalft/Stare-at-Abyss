/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

// Inherit the parent event
event_inherited();

ds_list_add(attributes,"800*600");
ds_list_add(attributes,"1024*768");
switch (global.windowWidth){
	case 1024: currentAttribute = 1;
				break;
	case 800: currentAttribute = 0;
				break;
}