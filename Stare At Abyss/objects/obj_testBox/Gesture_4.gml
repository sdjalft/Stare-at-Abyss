/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

dragged = false;
if (place_meeting(x,y,obj_testDustbin) || place_meeting(x,y,obj_testBoxSpawner)){
	if (position_meeting(initX,initY,obj_testBox)){
		instance_destroy();
	}
	else{
		rubbish = 1;
		x = initX;
		y = initY;
	}
}
else{
	instance_destroy();
}