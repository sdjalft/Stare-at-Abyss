/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//创建testBox表相关
boxX = ds_list_create();
boxY = ds_list_create();
boxName = ds_list_create();	//若name为0则表示没有实例
spawnTime = ds_list_create();	//默认为-1
isUsed = ds_list_create();

//testBox间隔数据
spaceX = (sprite_width-sprite_get_width(spr_testBox))/2;
spaceY = (sprite_height-sprite_get_height(spr_testBox)*boxCounts)/(boxCounts+1);

//2s后生成第一波box	
alarm[0] = room_speed*2;