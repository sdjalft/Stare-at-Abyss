/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

draw_sprite_ext(global.screen_pic,0,x-camera_get_view_width(view_camera[0])/2,
				y-camera_get_view_height(view_camera[0])/2,
				global.currentZoom,global.currentZoom,0,make_color_rgb(100,100,100),1);
draw_self();