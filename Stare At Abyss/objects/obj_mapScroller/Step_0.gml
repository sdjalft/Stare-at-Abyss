/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if (keyboard_check(vk_right)){
	if (camera_get_view_x(view_camera[0]) <= room_width-camera_get_view_width(view_camera[0])-scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+scrollSpeed,camera_get_view_y(view_camera[0])); 
	}
}
if (keyboard_check(vk_left)){
	if (camera_get_view_x(view_camera[0]) >= scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-scrollSpeed,camera_get_view_y(view_camera[0])); 
	}
}
if (keyboard_check(vk_down)){
	if (camera_get_view_y(view_camera[0]) <= room_height-camera_get_view_height(view_camera[0])-scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+scrollSpeed); 
	}
}
if (keyboard_check(vk_up)){
	if (camera_get_view_y(view_camera[0]) >= scrollSpeed){
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])-scrollSpeed); 
	}
}