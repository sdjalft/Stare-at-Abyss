/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//实时同步大小和调整位置
image_xscale = global.currentZoom;
image_yscale = global.currentZoom;
x = camera_get_view_x(view_camera[0])+global.currentZoom*window_get_width()/2-sprite_width/2;
y = camera_get_view_y(view_camera[0])+global.currentZoom*window_get_height()/2-sprite_height/2;