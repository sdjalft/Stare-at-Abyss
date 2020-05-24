/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码


if (keyboard_check(vk_right) || window_mouse_get_x()/window_get_width() > 0.95){
	if (camera_get_view_x(view_camera[0]) <= room_width-camera_get_view_width(view_camera[0])-scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+scrollSpeed,camera_get_view_y(view_camera[0])); 
	}
}
if (keyboard_check(vk_left) || window_mouse_get_x()/window_get_width() < 0.05){
	if (camera_get_view_x(view_camera[0]) >= scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-scrollSpeed,camera_get_view_y(view_camera[0])); 
	}
}
if (keyboard_check(vk_down || window_mouse_get_y()/window_get_height() > 0.97)){
	if (camera_get_view_y(view_camera[0]) <= room_height-camera_get_view_height(view_camera[0])-scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+scrollSpeed); 
	}
}
if (keyboard_check(vk_up || window_mouse_get_y()/window_get_height() <0.03)){
	if (camera_get_view_y(view_camera[0]) >= scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])-scrollSpeed); 
	}
}