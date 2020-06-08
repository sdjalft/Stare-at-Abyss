/// @description 生成第一波box
// 你可以在此编辑器中写入代码

for (var _cc = 0; _cc < boxCounts; _cc++){
	ds_list_add(boxX,x+spaceX+sprite_get_xoffset(spr_testBox));
	ds_list_add(boxY,y+(_cc+1)*spaceY+_cc*sprite_get_height(spr_testBox)+sprite_get_yoffset(spr_testBox));
	ds_list_add(boxName,"obj_testBox");
	ds_list_add(spawnTime,-1);
	ds_list_add(isUsed,false);
	var _inst = instance_create_layer(boxX[|_cc],boxY[|_cc],"Instances",asset_get_index(boxName[|_cc]));
	_inst.spawnerId = self;
	_inst.boxId = _cc;
}