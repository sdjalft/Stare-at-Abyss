/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//实时同步大小和调整位置
image_xscale = global.currentZoom;
image_yscale = global.currentZoom;
x = fatherId.x+global.currentZoom*10*(location%8+1)+sprite_width*(location%8);	//参数可调
y = fatherId.y+global.currentZoom*10*(floor(location/8)+1)+sprite_height*(floor(location/8));