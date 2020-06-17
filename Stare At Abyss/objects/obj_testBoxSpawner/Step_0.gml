/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//根据缩放比例计算各种大小
image_xscale = global.currentZoom;
image_yscale = global.currentZoom;

//实时改变box的位置
for (var _cc = 0; _cc < ds_list_size(boxX); _cc++){
	boxX[|_cc] = x+(spaceX+sprite_get_xoffset(spr_testBox))*global.currentZoom;
	boxY[|_cc] = y+((_cc+1)*spaceY+_cc*sprite_get_height(spr_testBox)+sprite_get_yoffset(spr_testBox))*global.currentZoom;
}

//检测是否有Box被移出,若移出3s后生成新的box
for (var _cc = 0; _cc < ds_list_size(boxX); _cc++){
	spawnTime[|_cc] -= 1;
	if (spawnTime[|_cc] == 0 && !position_meeting(boxX[|_cc],boxY[|_cc],obj_testBox)){
		boxName[|_cc] = "obj_testBox";
		isUsed[|_cc] = false;
		var _inst = instance_create_layer(boxX[|_cc],boxY[|_cc],"Instances",asset_get_index(boxName[|_cc]));
		_inst.spawnerId = self;
		_inst.boxId = _cc;
	}
	if (isUsed[|_cc] == true){
		boxName[|_cc] = 0;
		if (spawnTime[|_cc] < 0){
			spawnTime[|_cc] = 180;
		}
	}
}

x = camera_get_view_x(view_camera[0])+global.currentZoom*window_get_width()/20;
y = camera_get_view_y(view_camera[0])+global.currentZoom*window_get_height()/2-sprite_height/2;