/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//实时调整大小
if (spawned == true){
	image_xscale = global.currentZoom;
	image_yscale = global.currentZoom;
}

//实时校准位置
if (spawnerId != -1){
	if (moved == false || global.isScrolled == true){
		initX = spawnerId.x+(spawnerId.spaceX+sprite_get_xoffset(spr_testBox))*global.currentZoom;
		initY = spawnerId.y+((boxId+1)*spawnerId.spaceY+boxId*sprite_get_height(spr_testBox)+sprite_get_yoffset(spr_testBox))*global.currentZoom;
		x = initX;
		y = initY;
	}
}

//拖拽
if dragged{
	x = dragX;
	y = dragY;
}

//图片进入
if (image_xscale < global.currentZoom){
	image_xscale += 0.02*global.currentZoom;
	image_yscale += 0.02*global.currentZoom;
	if (image_xscale >= global.currentZoom){
		spawned = true;
	}
}

//淡入淡出效果
if (x >= initX+10){
	hspeed = 0;
}
if (x < initX){
	hspeed = 0;
	moved = false;
}