/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

if (keyboard_check(vk_right) || window_mouse_get_x() / window_get_width() > 0.95){
	if(camera_x < room_width){
		camera_x += cameraMovementSpeed * currentZoom;
		camera_set_view_pos(view_camera[0] ,
							camera_x - cameraWidth * currentZoom / 2 ,
							camera_y - cameraHeight * currentZoom / 2);
	}
}
if (keyboard_check(vk_left) || window_mouse_get_x() / window_get_width() < 0.05){
	if(camera_x > 0){
		camera_x -= cameraMovementSpeed * currentZoom;
		camera_set_view_pos(view_camera[0] ,
							camera_x - cameraWidth * currentZoom / 2 ,
							camera_y - cameraHeight * currentZoom / 2);
	}
}
if (keyboard_check(vk_down) || window_mouse_get_y() / window_get_height() > 0.97){
	if(camera_y < room_height){
		camera_y += cameraMovementSpeed * currentZoom;
		camera_set_view_pos(view_camera[0] ,
							camera_x - cameraWidth * currentZoom / 2 ,
							camera_y - cameraHeight * currentZoom / 2);
	}
}
if (keyboard_check(vk_up) || window_mouse_get_y() / window_get_height() <0.03){
	if(camera_y > 0){
		camera_y -= cameraMovementSpeed * currentZoom;
		camera_set_view_pos(view_camera[0] ,
							camera_x - cameraWidth * currentZoom / 2 ,
							camera_y - cameraHeight * currentZoom / 2);
	}
}
