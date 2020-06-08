/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

dragged = false;
if (place_meeting(x,y,obj_testDustbin)){
	instance_destroy();
}
if (place_meeting(x,y,obj_testBoxSpawner) || place_meeting(x,y,obj_solid)){
	if (position_meeting(initX,initY,obj_testBox)){
		instance_destroy();
	}
	else{
		rubbish = 1;
		x = initX;
		y = initY;
		exit;
	}
}
instance_destroy();