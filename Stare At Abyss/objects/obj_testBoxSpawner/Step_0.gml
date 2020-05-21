/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//检测是否有Box被移出,若移出3s后生成新的box

for (var _cc = 0; _cc < ds_list_size(boxX); _cc++){
	spawnTime[|_cc] -= 1;
	if (spawnTime[|_cc] == 0 && !position_meeting(boxX[|_cc],boxY[|_cc],obj_testBox)){
		boxName[|_cc] = "obj_testBox";
		instance_create_layer(boxX[|_cc],boxY[|_cc],"Instances",asset_get_index(boxName[|_cc]));
	}
	if (!position_meeting(boxX[|_cc],boxY[|_cc],obj_testBox)){
		boxName[|_cc] = 0;
		if (spawnTime[|_cc] < 0){
			spawnTime[|_cc] = 180;
		}
	}
}