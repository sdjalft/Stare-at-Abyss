/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//var _cx = camera_get_view_x(0)+camera_get_view_width(0)/2;
//var _cy = camera_get_view_y(0)+camera_get_view_height(0)/2;
if (global.currentZoom > 0.4) {	//参数可改
	global.isScrolled = true;
	global.currentZoom /= 1.02;
	camera_set_view_size(view_camera[0] ,
						cameraWidth * global.currentZoom,
						cameraHeight * global.currentZoom);
	camera_set_view_pos(view_camera[0] ,
						camera_x - cameraWidth * global.currentZoom / 2 ,
						camera_y - cameraHeight * global.currentZoom / 2);
}