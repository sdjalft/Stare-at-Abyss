/// @description patrol
// 你可以在此编辑器中写入代码

randomize();

if (condition == "patrol"){	//目前巡逻使用的是随机方向行走，之后可调整为按照路径巡逻
							//并且没有考虑碰撞情况（停留在简易ai版本）
	var _dir = irandom(360);
	xNext = x+lengthdir_x(150,_dir);
	yNext = y+lengthdir_y(150,_dir);
}

alarm[0] = 2.5*room_speed;