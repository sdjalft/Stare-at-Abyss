/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//拖拽
if dragged{
	x = dragX;
	y = dragY;
}

//淡入淡出效果
if (x <= initX || x >= initX+10){
	hspeed = 0;
}

//图片进入
if (image_xscale < 1){
	image_xscale += 0.02;
	image_yscale += 0.02;
}