/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//创建箭头
leftArrow = instance_create_depth(x,y+10,layer_get_depth("settingMenu")-1,obj_settingLeftArrow);
rightArrow = instance_create_depth(x+240,y+10,layer_get_depth("settingMenu")-1,obj_settingRightArrow);
leftArrow.optionId = self;
rightArrow.optionId = self;

//定义属性
attributes = ds_list_create();
currentAttribute = 0;