/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

cameraWidth = view_get_wport(view_camera[0]);								//camera宽度
cameraHeight = view_get_hport(view_camera[0]);								//camera高度
camera_x = camera_get_view_x(view_camera[0]) + cameraWidth / 2;				//camera坐标x，以camera中心为基准
camera_y = camera_get_view_y(view_camera[0]) + cameraHeight / 2;//camera坐标y，以camera中心为基准

global.currentZoom = 1.0;		//当前缩放倍数（范围0.4~2.5）
global.isScrolled = false;