/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

if !global.paused{
	global.paused = true;
	if sprite_exists(global.screen_pic){ 
		sprite_delete(global.screen_pic);
	}
	global.screen_pic = sprite_create_from_surface(application_surface,0,0,
													camera_get_view_width(view_camera[0]),
													camera_get_view_height(view_camera[0]),
													false,false,0,0);
	instance_deactivate_all(all);
	instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
							camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,
							"Paused",obj_continue);
}