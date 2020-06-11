/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//实时同步大小和调整位置
image_xscale = global.currentZoom;
image_yscale = global.currentZoom;
x = camera_get_view_x(view_camera[0])+global.currentZoom*18*window_get_width()/20;
y = camera_get_view_y(view_camera[0])+global.currentZoom*1*window_get_height()/20;

//窗口失去焦点亦会暂停
if (!window_has_focus() || keyboard_check_pressed(vk_escape)){
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
}