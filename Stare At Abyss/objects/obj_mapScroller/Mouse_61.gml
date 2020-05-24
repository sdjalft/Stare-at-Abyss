/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//var _cx = camera_get_view_x(0)+camera_get_view_width(0)/2;
//var _cy = camera_get_view_y(0)+camera_get_view_height(0)/2;
if (cameraWidth > window_get_width()*0.5){	//参数可改
	cameraWidth /= scale;
	cameraHeight /= scale;
	camera_set_view_size(view_camera[0] , cameraWidth , cameraHeight);
	camera_set_view_pos(view_camera[0] ,
						camera_x - cameraWidth / 2 ,
						camera_y - cameraHeight / 2);
}
