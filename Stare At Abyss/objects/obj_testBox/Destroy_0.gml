/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

spawnerId.isUsed[|boxId] = true;
if (!place_meeting(x,y,obj_testDustbin) && !place_meeting(x,y,obj_solid)){
	instance_create_layer(x,y,"Instances",obj_monster);
}